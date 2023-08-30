----------------------------------------------------------------------------------------------------------------------------------------------------
-- CacheAHouse.lua - Generic Auction House Cache
--
-- Author: Expelliarm5s / November 2022 / All Rights Reserved
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212 globals DLAPI
-- luacheck: max_line_length 170
-- luacheck: globals SafePack SafeUnpack C_AuctionHouse GetNumAuctionItems GetAuctionItemInfo GetAuctionItemLink GetAuctionItemTimeLeft

local addonName, addon = ...
local CacheAHouse = addon:NewModule("CacheAHouse", "AceEvent-3.0", "AceConsole-3.0", "AceHook-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local private = {}
private.version = "1.0.17"
-------------------------------------------------------------------------------------------------------

-- This addon provides data from own auction house entries. It gathers the data on each visit of the auction house.
--
-- 1. Include CacheAHouse.lua in TOC-File
--
-- 2. Initialization:
--   local addonName, addon = ...
--   addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceConsole-3.0", "AceHook-3.0", "AceEvent-3.0")
--   addon.modules.CacheAHouse:Login()
--
-- 3. Example
--    local cacheAHouse = CacheAHouse:GetCache()
--    local key = CacheAHouse:GetKey()
--    for k, v in ipairs(cacheAHouse[guildKey].data) do
--      printf(v.id)
--    end
--
--    |Element |Type   |Nilable |Hints                              |
--    |--------|-------|--------|-----------------------------------|
--    |brec.ok |bool   |false   |if true id is valid
--    |brec.tme|number |false   |time() of creation
--    |brec.lnk|string |true    |itemLink
--    |brec.nme|string |true    |itemName
--    |brec.id |number |false   |itemID
--    |brec.aid|number |false   |auctionID
--    |brec.sts|number |false   |Enum.AuctionStatus
--    |brec.lfs|number |true    |timeLeftSeconds
--    |brec.lft|number |true    |Enum.AuctionHouseTimeLeftBand
--    |brec.bid|number |true    |bidAmount
--    |brec.buy|number |true    |buyoutAmount
--    |brec.bdd|string |true    |bidder
--    |brec.cnt|number |false   |quantity
--    |brec.lvl|number |false   |itemLevel
--    |brec.sfx|number |false   |itemSuffix
--    |brec.spe|number |false   |battlePetSpeciesID

--
-- 5. Configuration
--    Should user be informed about which items where updated?
--    CacheAHouse.verboseUpdate = true
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Configuration

CacheAHouse.verboseUpdate = true
CacheAHouse.isDebug = false

-- internal
CacheAHouse.updateFlippingPenalty = 2
CacheAHouse.delayedAHouseProcessing = 3

------------------------------------------------------------------------------
-- Debug Stuff

function CacheAHouse:DebugPrintf(...)
	local status, res
	status, res = pcall(format, ...)
	if status and (CacheAHouse.isDebug or (res and (res:match("ERR~") or res:match("WARN~")))) then
		if addon.DebugLog then
			addon:DebugLog("CAH~" .. res)
		else
			DLAPI.DebugLog(addonName, "CAH~" .. res)
		end
	end
end

------------------------------------------------------------------------------
-- Data

function CacheAHouse:Login()
	CacheAHouse.isDebug = addon.isDebug
	CacheAHouse:DebugPrintf("Login() Version %s %s",
		private.version,
		(CacheAHouse.fixPetbattleLinks == true and ", with pets") or
		(CacheAHouse.fixPetbattleLinks == false and ", no pets") or "")

	-- import data
	CacheAHouse:CheckData()

	private.timerSec = 1
	private.sectimer = C_Timer.NewTicker(private.timerSec,
		function()
			CacheAHouse:LoadCache()
		end)
end

function CacheAHouse:CheckData()
	CacheAHouse:DebugPrintf("CheckData()")

	-- provide current char data
	private.currentGUID = UnitGUID("player")
	private.currentChar = UnitFullName("player")
	private.currentRealm = GetRealmName()
	private.currentCharKey = private.currentChar .. "-" .. private.currentRealm
	private.currentGuildKey = nil

	-- addon data
	private.addonData = _G[addonName .. "DB"]

	-- load data here and in SecTimer()
	CacheAHouse:LoadCache()
end

function CacheAHouse:GetCache()
--	CacheAHouse:DebugPrintf("GetCache()")

	if private.addonData and private.addonData.CacheAHouse then
		return private.addonData.CacheAHouse
	end
end

function CacheAHouse:GetKey()
	-- CacheAHouse:DebugPrintf("GetKey()")

	return private.currentCharKey
end

function CacheAHouse:RegisterOnUpdateCB(cb)
	CacheAHouse:DebugPrintf("RegisterOnUpdateCB(%s)", tostring(cb))

	if not cb then
		return
	end

	private.onUpdateCB = private.onUpdateCB or {}
	table.insert(private.onUpdateCB, cb)
end

-- load/initialize cache data
function CacheAHouse:LoadCache()
	CacheAHouse.isDebug = addon.isDebug
	CacheAHouse:DebugPrintf("OK~>>LoadCache(), running=%s, pending=%s, time=%s",
		tostring(private.isUpdateRunning), tostring(private.updatePending), time())

	if private.addonData and not private.currentData then
		CacheAHouse:DebugPrintf("WARN~LoadCache() new session with char key '%s'", tostring(private.currentCharKey))

		-- create cache and let private.currentData point to it
		private.addonData.CacheAHouse = private.addonData.CacheAHouse or {}
		if not private.addonData.CacheAHouse[private.currentCharKey] then
			CacheAHouse:DebugPrintf("WARN~LoadCache() initialize new AH cache for '%s'", tostring(private.currentCharKey))
			private.addonData.CacheAHouse[private.currentCharKey] = {}
		else
			CacheAHouse:DebugPrintf("WARN~LoadCache() using previous AH cache for '%s'", tostring(private.currentCharKey))
		end

		private.currentData = private.addonData.CacheAHouse[private.currentCharKey]
		private.currentData.data = private.currentData.data or {}

		-- reset session flags to be able to check if a tabs was updated this session
		private.currentData.session = false

		CacheAHouse:DebugPrintf("WARN~LoadCache() loaded AH cache for '%s', last used time=%s",
			tostring(private.currentCharKey),
			tostring(private.currentData.tme)
			)

		private.currentData.tme = time()

		-- cache data is now at private.currentData.data, so start processing events
		private.skipEvent = 0
		addon:RegisterEvent("AUCTION_HOUSE_SHOW", CacheAHouse.ProcessEvent)
		if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
			addon:RegisterEvent("OWNED_AUCTIONS_UPDATED", CacheAHouse.ProcessEvent)
			-- currently not useable
			-- addon:RegisterEvent("AUCTION_HOUSE_AUCTION_CREATED", CacheAHouse.ProcessEvent)
		end
	end

	-- if there was the need to process an event do it
	if private.updatePending then
		CacheAHouse:DebugPrintf("WARN~Pending update...")

		CacheAHouse:UpdateAHouseItems("PENDING_UPDATE")
	end
	CacheAHouse:DebugPrintf("<<LoadCache()")
end

function CacheAHouse.ProcessEvent(event, arg1, arg2, arg3)
	CacheAHouse:DebugPrintf(">>ProcessEvent(%s, %s, %s, %s)", tostring(event), tostring(arg1), tostring(arg2), tostring(arg3))

	if event == "AUCTION_HOUSE_SHOW" or event == "AUCTION_HOUSE_AUCTION_CREATED" then
		C_Timer.After(CacheAHouse.delayedAHouseProcessing, function()
			CacheAHouse:DebugPrintf("ProcessEvent(%s) delayed processing after %s sec.", tostring(event), tostring(CacheAHouse.delayedAHouseProcessing))
			CacheAHouse:UpdateAHouseItems(event)
		end)
	end

	if event == "OWNED_AUCTIONS_UPDATED" then
		CacheAHouse:UpdateAHouseItems(event)
	end

	CacheAHouse:DebugPrintf("<<ProcessEvent()")
end

function CacheAHouse:UpdateAHouseItems(event)
	CacheAHouse:DebugPrintf("OK~>>UpdateAHouseItems(%s), running=%s, time=%s",
		tostring(event), tostring(private.isUpdateRunning), time())

	if private.isUpdateRunning then
		CacheAHouse:DebugPrintf("ERR~ERROR: already updating")
		return
	end

	-- Other addons scan the auction house causing the game to spawn excessive OWNED_AUCTIONS_UPDATED events.
	-- So we're preventing pointless processing.
	-- But setting updateFlippingPenalty to high we risk that the AH is already closed which will be to late for the
	-- calls to get the data.
	if (event == "AUCTION_HOUSE_SHOW" or event == "OWNED_AUCTIONS_UPDATED" or event == "AUCTION_HOUSE_AUCTION_CREATED") and private.updateStartedTime then
		local sinceLastUpdate = time() - private.updateStartedTime
		if sinceLastUpdate < CacheAHouse.updateFlippingPenalty then
			CacheAHouse:DebugPrintf("ERR~ERROR: flipping update (last just %s sec. ago)", tostring(sinceLastUpdate))
			-- We remember here that we have to call UpdateAHouseItems() again in order to be able to react to possibly changed data.
			private.updatePending = true
			return
		end
	end

	private.isUpdateRunning = true
	private.updatePending = nil

	local currentAuctions = {}
	local perusedAHouse

	if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE and C_AuctionHouse then
		for index = 1, C_AuctionHouse.GetNumOwnedAuctions() do
			local info = C_AuctionHouse.GetOwnedAuctionInfo(index)
			if info then
				perusedAHouse = true
				local brec = {}
				brec.tme = time()
				brec.aid = info.auctionID
				if info.itemKey then
					brec.ok = true
					brec.id = info.itemKey.itemID
					brec.lvl = info.itemKey.itemLevel
					brec.sfx = info.itemKey.itemSuffix
					brec.spe = info.itemKey.battlePetSpeciesID
				end
				brec.lnk = info.itemLink
				brec.sts = info.status
				brec.cnt = info.quantity
				brec.lfs = info.timeLeftSeconds
				brec.lft = info.timeLeft
				brec.bid = info.bidAmount
				brec.buy = info.buyoutAmount
				brec.bdd = info.bidder

				currentAuctions[index] = brec

				CacheAHouse:DebugPrintf(" #%s: %s x %s / %s (%s) %s", tostring(index),
					tostring(currentAuctions[index].cnt), tostring(currentAuctions[index].id), tostring(currentAuctions[index].lnk),
					tostring(currentAuctions[index].sts), CacheAHouse:FromCopper(currentAuctions[index].buy))
			else
				CacheAHouse:DebugPrintf("ERR~ERROR: #%s: nil from GetOwnedAuctionInfo()", tostring(index))
			end
		end
	elseif GetNumAuctionItems then
		for index = 1, GetNumAuctionItems("owner") do
			perusedAHouse = true
			local name, _, cnt, qly, _, lvl, _, _, _, buy, bid, _, bidderFullName, _, _, sts, itemID = GetAuctionItemInfo("owner", index);
			local itemLink = GetAuctionItemLink("owner", index)
			local timeLeftSeconds = GetAuctionItemTimeLeft("owner", index)

			if name and itemID then
				if not itemLink then
					CacheAHouse:DebugPrintf("ERR~ERROR: #%s: nil from GetAuctionItemLink()", tostring(index))
				end

				local brec = {}
				brec.tme = time()
				brec.aid = index
				brec.id = itemID
				if itemID then
					brec.ok = true
				end

				brec.lvl = lvl
				brec.qly = qly
				brec.lnk = itemLink
				brec.sts = sts
				brec.cnt = cnt
				brec.lfs = timeLeftSeconds
				brec.bid = bid
				brec.buy = buy
				brec.bdd = bidderFullName

				currentAuctions[index] = brec

				if not itemLink then
					CacheAHouse:DebugPrintf("ERR~ERROR: #%s: nil from GetAuctionItemLink()", tostring(index))
				end

				CacheAHouse:DebugPrintf(" #%: %s x %s / %s (%s) %s", tostring(index),
					tostring(currentAuctions[index].cnt), tostring(currentAuctions[index].id), tostring(currentAuctions[index].lnk),
					tostring(currentAuctions[index].sts), CacheAHouse:FromCopper(currentAuctions[index].buy))
			else
				CacheAHouse:DebugPrintf("ERR~ERROR: #%s: nil from GetAuctionItemInfo()", tostring(index))
			end
		end
	else
		CacheAHouse:DebugPrintf("ERR~ERROR: no method to retrieve auction house data!")
	end

	if perusedAHouse then
		-- lets update items
		local updated = 0
		local new = 0
		local removed = 0

		-- update previous seen slot data
		private.currentData.data = private.currentData.data or {}
		for j, val in pairs(currentAuctions) do
			if private.currentData.data[j] then
				local changed = 0
				if val and val.lnk and private.currentData.data[j].id and val.id ~= private.currentData.data[j].id then
					changed = 1
				end
				updated = updated + changed
				private.currentData.data[j] = val
			else
				new = new + 1
				private.currentData.data[j] = val
			end
		end

		-- delete removed slot data
		for j, _ in pairs(private.currentData.data) do
			if not currentAuctions[j] then
				private.currentData.data[j] = nil
				removed = removed + 1
			end
		end

		private.currentData.tme = time()
		private.currentData.session = private.currentData.tme

		if CacheAHouse.verboseUpdate and (new > 0 or updated > 0 or removed > 0) then
			addon:Printf(L["Updated Auction Data Records: %s new, %s updated, %s removed."],
				tostring(new), tostring(updated), tostring(removed))
		end
	else
		-- at AHouse but couldn't get items
		if CacheAHouse.verboseUpdate then
			addon:Printf(L["No auction house items updated."])
		end
	end

	private.updateStartedTime = time()

	private.isUpdateRunning = false

	private.onUpdateCB = private.onUpdateCB or {}
	for _, cb in ipairs(private.onUpdateCB) do
		pcall(cb, private.currentData.data)
	end

	CacheAHouse:DebugPrintf("<<UpdateAHouseItems()")
end

-- build money string from copper
function CacheAHouse:FromCopper(copper, isVS)
	if not tonumber(copper) then
		return ""
	end

	local g = floor(copper / COPPER_PER_GOLD)
	local s = floor((copper - (g * COPPER_PER_GOLD)) /  COPPER_PER_SILVER)
	local c = copper - (g * COPPER_PER_GOLD) - (s * COPPER_PER_SILVER)

	local result = ""

	local vsC = ""
	local vsR = ""
	if isVS then
		vsC = ITEM_QUALITY_COLORS[7].hex
		vsR = FONT_COLOR_CODE_CLOSE
	end

	if not addon.db.global.discardSilver then
		if not addon.db.global.discardCopper then
			if (s > 0) or (g > 0) then
				result = vsC .. format("%02d", c) .. vsR .. "|cffeda55fc|r"
			else
				result = vsC .. format("%d", c) .. vsR .. "|cffeda55fc|r"
			end
		end
		if g > 0 then
			result = vsC .. format("%02d", s) .. vsR .. "|cffc7c7cfs|r " .. result
		else
			if s > 0 then
				result = vsC .. format("%d", s) .. vsR .. "|cffc7c7cfs|r " .. result
			end
		end
	end
	if g > 0 then
		local gs = tostring(g)
		gs = gsub(gs, "(%d)(%d%d%d%d%d%d)$", "%1" .. LARGE_NUMBER_SEPERATOR .. "%2")
		gs = gsub(gs, "(%d)(%d%d%d)$", "%1" .. LARGE_NUMBER_SEPERATOR .. "%2")
		result = vsC .. gs .. vsR .. "|cffffd70ag|r " .. result
	end

	return result
end


-- EOF
