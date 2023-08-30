----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Statistics.lua - Level, Timings and Gold Statistics
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212 globals DLAPI

-- luacheck: globals LOCALIZED_CLASS_NAMES_MALE GetFactionColor GetMoney GetSubZoneText RequestTimePlayed
-- luacheck: globals GetNumAuctionItems GetAuctionItemInfo GetAuctionItemLink
-- luacheck: globals C_AuctionHouse
-- luacheck: max_line_length 160


local addonName, addon = ...
local Statistics = addon:NewModule("Statistics", "AceEvent-3.0", "AceConsole-3.0", "AceHook-3.0")
local AceGUI = LibStub("AceGUI-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local private = {}
-------------------------------------------------------------------------------------------------------

private.hourly = 60 * 60

------------------------------------------------------------------------------
-- Debug Stuff

function Statistics:DebugPrintf(...)
	if addon.isDebug then
		local status, res = pcall(format, ...)
		if status then
			addon:DebugLog("Sts~" .. res)
		end
	end
end

------------------------------------------------------------------------------
-- Enable Statistics

function Statistics:CheckData()
	-- provide current char data
	private.currentGUID = UnitGUID("player")
	private.currentChar = UnitFullName("player")
	private.currentRealm = GetRealmName()
	private.currentClass = select(2, UnitClass("player"))
	private.currentClassName = UnitClass("player")
	private.currentFaction = UnitFactionGroup("player")
	private.currentFactionName = select(2, UnitFactionGroup("player"))
	private.currentRace = UnitRace("player")
	private.currentLevel = UnitLevel("player")

	private.addonData = _G["LevelTimingsGoldDB"]
	private.addonData["version"] = 2
	private.addonData["players"] = private.addonData["players"] or {}

	local currentData
	if private.addonData.players[private.currentGUID] then
		Statistics:DebugPrintf("WARN~Data for this char already present.")
		currentData = private.addonData.players[private.currentGUID]
	else
		if _G["LevelTimingsDB"] and _G["LevelTimingsDB"]["players"] and _G["LevelTimingsDB"]["players"][private.currentGUID] then
			addon:Printf("Importing old data for this char...")
			Statistics:DebugPrintf("WARN~Importing old data for this char from LevelTimingsDB")
			currentData = {}
			for u, v in pairs(_G["LevelTimingsDB"]["players"][private.currentGUID]) do
				if type(v) ~= "table" then
					Statistics:DebugPrintf("  copy key '%s' value '%s'", tostring(u), tostring(v))
					currentData[u] = v
				end
			end
			currentData["timings"] = {}
			if _G["LevelTimingsDB"]["players"][private.currentGUID]["timings"]
				and type(_G["LevelTimingsDB"]["players"][private.currentGUID]["timings"]) == "table" then
				for i, v in ipairs(_G["LevelTimingsDB"]["players"][private.currentGUID]["timings"]) do
					Statistics:DebugPrintf("  copy timings entry #%s", tostring(i))
					local entry = {}
					if type(v) == "table" then
						for j, w in pairs(v) do
							Statistics:DebugPrintf("    copy key '%s' value '%s'", tostring(j), tostring(w))
							entry[j] = w
						end
						table.insert(currentData["timings"], entry)
					end
				end
			end
			private.addonData.players[private.currentGUID] = currentData
		else
			addon:Printf(L["Creating initial data for this char."])
			Statistics:DebugPrintf("ERR~Creating initial data for this char in LevelTimingsGoldDB")
			private.addonData.players[private.currentGUID] = {}
			currentData = private.addonData.players[private.currentGUID]
		end
	end
	Statistics.currentData = currentData

	-- trigger variables update
	Statistics.currentData["ts"] = time()

	-- Demo data for screenshots
	private.isDemo = false
	if private.isDemo then
		private.currentChar = "Skywalker"
		private.currentRealm = "Mandalorian"
	end

	Statistics.currentData.name = private.currentChar
	Statistics.currentData.realm = private.currentRealm
	Statistics.currentData.class = private.currentClass
	Statistics.currentData.faction = private.currentFaction
	Statistics.currentData.timings = Statistics.currentData.timings or {}

	private.currentHandle = RAID_CLASS_COLORS[private.currentClass]:WrapTextInColorCode(private.currentChar) ..
		"-" .. GetFactionColor(private.currentFaction):WrapTextInColorCode(private.currentRealm)
end

function Statistics:Login()
	Statistics:DebugPrintf("Login()")

	-- Register for Levelup Events
	Statistics:RegisterEvent("PLAYER_LEVEL_UP", Statistics.ProcessEvent)

	-- Log
	addon.debuglog = addon.debuglog or {}

	-- import data or create new data
	Statistics:CheckData()

	-- create data entries on first login of this char
	if #Statistics.currentData.timings == 0 then
		-- Create Initial Entry
		Statistics:DebugPrintf("ERR~Creating initial entry")
		local firstEntry = {
			initial = true,
			level = private.currentLevel,
			timestamp = time(),
			gold = GetMoney(),
			zone = GetRealZoneText(),
			subzone = GetSubZoneText(),
			played = 0, -- filled by timer
			gameVersion = GetBuildInfo(),
			tocVersion = select(4, GetBuildInfo()),
		}
		table.insert(Statistics.currentData.timings, firstEntry)

		-- Create Status Entry
		Statistics:DebugPrintf("ERR~Creating initial status entry")
		local statusEntry = {
			level = 0,
			timestamp = time() + 1,
			gold = GetMoney(),
			zone = GetRealZoneText(),
			subzone = GetSubZoneText(),
			played = 0, -- filled by timer
			gameVersion = GetBuildInfo(),
			tocVersion = select(4, GetBuildInfo()),
		}
		table.insert(Statistics.currentData.timings, statusEntry)
		-- Statistics:TriggerUpdateTimes()
	end

	-- create status entry, if missing
	if Statistics.currentData.timings[#Statistics.currentData.timings] and
		Statistics.currentData.timings[#Statistics.currentData.timings].level > 0 then
		-- Create Status Entry
		Statistics:DebugPrintf("ERR~Creating new status entry")
		local statusEntry = {
			level = 0,
			timestamp = time() + 1,
			gold = GetMoney(),
			zone = GetRealZoneText(),
			subzone = GetSubZoneText(),
			played = 0,
			gameVersion = GetBuildInfo(),
			tocVersion = select(4, GetBuildInfo()),
		}
		table.insert(Statistics.currentData.timings, statusEntry)
	end

	-- create current level entry, if missing
	if Statistics.currentData.timings[#Statistics.currentData.timings-1] then
		if Statistics.currentData.timings[#Statistics.currentData.timings-1].level then
			if Statistics.currentData.timings[#Statistics.currentData.timings-1].level < UnitLevel("player") then
				Statistics:DebugPrintf("ERR~Missing level data?!, calling TriggerLevelUp()")
				Statistics:TriggerLevelUp(UnitLevel("player"))
			end
		else
			Statistics:DebugPrintf("ERR~Missing level data?!, calling TriggerLevelUp()")
			Statistics:TriggerLevelUp(UnitLevel("player"))
		end
	end

	Statistics:TriggerUpdateTimes()

	if addon.db.global.addPseudoLevel or addon.db.global.addPseudoLevelAlways then
		C_Timer.After(5 * 60, Statistics.CheckForPseudoLevel)
	end

	if addon.CacheAHouse and addon.CacheAHouse.RegisterOnUpdateCB then
		addon.CacheAHouse:RegisterOnUpdateCB(Statistics.CacheAHouseUpdateCB)
	end

	C_Timer.After(private.hourly, function() Statistics.AddHourlyLevel() end)
end

function Statistics.AddHourlyLevel()
	if addon.db.global.addPseudoLevelHours then
		addon:Printf(L["...ding"])
		addon.Statistics:TriggerLevelUp(UnitLevel("player"))
	end
	C_Timer.After(private.hourly, function() Statistics.AddHourlyLevel() end)
end

function Statistics:CheckForPseudoLevel()
	Statistics:DebugPrintf("CheckForPseudoLevel()")

	if #Statistics.currentData.timings > 0 and
		((Statistics.currentData.timings[#Statistics.currentData.timings-1].level > 59) or (addon.db.global.addPseudoLevelAlways)) then

		local SECPERDAY = 60*60*24
		local dayStart = floor(time() / SECPERDAY) * SECPERDAY
		local lastLvlup = Statistics.currentData.timings[#Statistics.currentData.timings-1].timestamp
		local lastLvlupDayStart = floor(Statistics.currentData.timings[#Statistics.currentData.timings-1].timestamp / SECPERDAY) * SECPERDAY

		Statistics:DebugPrintf("dayStart %s lastLvlup %s lastLvlupDayStart %s",
			addon.GUI.DebugLog_TimeToString(dayStart),
			addon.GUI.DebugLog_TimeToString(lastLvlup),
			addon.GUI.DebugLog_TimeToString(lastLvlupDayStart))
		if (dayStart - lastLvlupDayStart) > 0 then
			Statistics:Printf(L["Goood Mooorning!"])
			Statistics:TriggerLevelUp(UnitLevel("player"))
		else
			Statistics:DebugPrintf(" no!")
		end
	end
end

function Statistics:SecTimer()
	Statistics:DebugPrintf("SecTimer()")

	if Statistics.currentData and Statistics.currentData.timings[#Statistics.currentData.timings]
		and Statistics.currentData.timings[#Statistics.currentData.timings].level
		and Statistics.currentData.timings[#Statistics.currentData.timings].level == 0 then

		Statistics.currentData.timings[#Statistics.currentData.timings].timestamp = time()
		if Statistics.currentData.timings[#Statistics.currentData.timings].played and
			tonumber(Statistics.currentData.timings[#Statistics.currentData.timings].played) then
			Statistics.currentData.timings[#Statistics.currentData.timings].played = Statistics.currentData.timings[#Statistics.currentData.timings].played + 1
		end

		if Statistics.currentData.timings[#Statistics.currentData.timings].playedThis and
			tonumber(Statistics.currentData.timings[#Statistics.currentData.timings].playedThis) then
			Statistics.currentData.timings[#Statistics.currentData.timings].playedThis = Statistics.currentData.timings[#Statistics.currentData.timings].playedThis + 1
		end
		Statistics.currentData.timings[#Statistics.currentData.timings].gold = GetMoney()
		Statistics.currentData.timings[#Statistics.currentData.timings].zone = GetRealZoneText()
	end
end


function Statistics:DeleteEntry(timestamp)
	Statistics:DebugPrintf("DeleteEntry(%s)", tostring(addon.GUI.DebugLog_TimeToString(timestamp)))

	local found
	for _, row in ipairs(Statistics.currentData.timings) do
		-- not status and not first!
		if row.level and row.level > 1 then
			if row.timestamp == timestamp then
				found = row
			end
		end
	end

	if found and tDeleteItem then
		addon:Printf(L["Deleting entry %s"], tostring(addon.GUI.DebugLog_TimeToString(found.timestamp)))
		tDeleteItem(Statistics.currentData.timings, found)

		if addon.GUI.display then
			addon.Statistics:FillLogFromStatistics(addon.GUI.view)
			addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
		end
	end
end

function Statistics:SetRebuildUI()
	private.rebuildUI = true
end

function Statistics:GetCombinedCharsAndRealms()
	Statistics:DebugPrintf("GetCombinedCharsAndRealms()")

	local charRealm = addon.db.global.combineChars .. ","
	charRealm = gsub(charRealm, " ", "")
	Statistics:DebugPrintf("  charRealm=%s", tostring(charRealm))

	local currCharRealm = Statistics.currentData.realm
	currCharRealm = gsub(currCharRealm, " ", "")

	local result = 	Statistics.currentData.name .. "-" .. currCharRealm
	local resultCnt = 1

	charRealm:gsub("([^,^-]+)-([^,]+),",
		function(j, k)
			Statistics:DebugPrintf("  j = '%s', k = '%s'", tostring(j), tostring(k))

			if k:lower() == currCharRealm:lower() then
				if j:lower() ~= private.currentChar:lower() then
					Statistics:DebugPrintf("    %s-%s added", tostring(j), tostring(k))
					result = result .. "," .. j .. "-" .. k
					resultCnt = resultCnt + 1
				else
					Statistics:DebugPrintf("    %s-%s same char", tostring(j), tostring(k))
				end
			else
				Statistics:DebugPrintf("    %s-%s not on this realm", tostring(j), tostring(k))
			end
		end)

	Statistics:DebugPrintf("  >> %s", tostring(result))
	return result, resultCnt
end

-- Create Tab, Fill Data, Show UI
function Statistics:Load(tab)
	Statistics:DebugPrintf("Load(%s)", tostring(tab))

	local theTab = tab or L["Statistics for "] .. Statistics:GetCombinedCharsAndRealms()
	-- create Log/Tab if not present
	if not addon.debuglog[theTab] or private.rebuildUI then
		Statistics:DebugPrintf("  no log %s", tostring(theTab))

		-- flag tab for reload
		if private.rebuildUI then
			Statistics:DebugPrintf("  rebuildUI for %s: #addon.GUI.guiTabs.order = %s", tostring(theTab), tostring(#addon.GUI.guiTabs.order))
			local thisName
			for i, name in ipairs(addon.GUI.guiTabs.order) do
				Statistics:DebugPrintf("  rebuildUI for %s: i=%s, name=%s", tostring(theTab), tostring(i), tostring(name))
				if name and name == theTab then
					thisName = i
				end
			end
			if thisName then
				Statistics:DebugPrintf("  rebuildUI for %s: tab num %s", tostring(theTab), tostring(thisName))
				table.remove(addon.GUI.guiTabs.order, thisName)
			else
				Statistics:DebugPrintf("ERR~  rebuildUI for %s: no tab num found!", tostring(theTab))
			end
		end

		addon.GUI.CreateStatisticsTab(theTab, Statistics.CreateStatisticsWidgets, private.rebuildUI)
	else
		-- to show this tab in GUI:Load()
		addon.GUI.guiTabs.lastSelected = theTab
		Statistics:DebugPrintf("  log %s", tostring(theTab))
	end

	private.rebuildUI = false

	-- put relevant statistics into the log
	Statistics:FillLogFromStatistics(theTab)

	-- magic button
	addon.GUI.debugLog_defaultMagicButtonCB = Statistics.MagicButtonCB
	addon.GUI.debugLog_defaultMagicButtonText = "GG"
	addon.GUI.debugLog_defaultMagicButtonStatusText = L["Export data for the challenge channel (Alt + Click for short version)."]

	-- show the GUI
	Statistics:DebugPrintf("  -> GUI:Load(%s)", tostring(theTab))
	addon.GUI:Load(theTab)
	if addon.GUI.debugLog_colCtrl[theTab] and addon.GUI.debugLog_colCtrl[theTab].w then
		addon.GUI.debugLog_lastSortTitle[theTab] = addon.GUI.debugLog_colCtrl[theTab].w:GetSortTitle()
		-- addon:Printf("set GUI.debugLog_lastSortTitle[%s] = %s", tostring(theTab), tostring(addon.GUI.debugLog_lastSortTitle[theTab]))
	end
	Statistics:DebugPrintf("  <<Load(%s)", tostring(theTab))

	-- request played time
	Statistics:TriggerUpdateTimes()
end

-- create and return button/other widget
function private.AddButton(widgetType, label, status)
	if not status then
		widgetType, label, status = "Button", widgetType, label
	end
	local button = assert(AceGUI:Create(widgetType))
	if button.SetText then
		button:SetText(tostring(label))
	end
	button:SetCallback("OnEnter", function() addon.GUI:SetStatusLine(status) end)
	button:SetCallback("OnLeave", function() addon.GUI:SetStatusLine("") end)
	return button
end

-- create additional UI elements
function Statistics.CreateStatisticsWidgets(tab, container)
	Statistics:DebugPrintf("CreateStatisticsWidgets(%s, %s)", tostring(tab), tostring(container))

	if not container then
		return
	end

	if not addon.db.global.exportButtons then
		return
	end

	local numCol = 5
	local psl = private.AddButton("Label", "", "")
	psl:SetRelativeWidth(1.8 * 1 / numCol)
	container:AddChild(psl)

	local btnExport1 = AceGUI:Create("Button")
	btnExport1:SetText("Export CSV")
	btnExport1:SetRelativeWidth(1 / numCol)
	btnExport1:SetCallback("OnEnter", function() addon.GUI:SetStatusLine(L["Export data (CSV)"]) end)
	btnExport1:SetCallback("OnLeave", function() addon.GUI:SetStatusLine("") end)
	btnExport1:SetCallback("OnClick", function() addon.GUI.DebugLog_ExportLog(tab, "csv") end)
	container:AddChild(btnExport1)

	local btnExport2 = AceGUI:Create("Button")
	btnExport2:SetText("Export HTML")
	btnExport2:SetRelativeWidth(1 / numCol)
	btnExport2:SetCallback("OnEnter", function() addon.GUI:SetStatusLine(L["Export data (HTML)"]) end)
	btnExport2:SetCallback("OnLeave", function() addon.GUI:SetStatusLine("") end)
	btnExport2:SetCallback("OnClick", function() addon.GUI.DebugLog_ExportLog(tab, "html") end)
	container:AddChild(btnExport2)

	local btnExport3 = AceGUI:Create("Button")
	btnExport3:SetText("Export MD")
	btnExport3:SetRelativeWidth(1 / numCol)
	btnExport3:SetCallback("OnEnter", function() addon.GUI:SetStatusLine(L["Export data (MD)"]) end)
	btnExport3:SetCallback("OnLeave", function() addon.GUI:SetStatusLine("") end)
	btnExport3:SetCallback("OnClick", function() addon.GUI.DebugLog_ExportLog(tab, "md") end)
	container:AddChild(btnExport3)
end

-- export data
function Statistics.MagicButtonCB(frame, button)
	Statistics:DebugPrintf("MagicButtonCB(%s, %s)", tostring(frame), tostring(button))

	local f = LibStub("LibTextDump-1.0"):New(L["Data for the challenge channel"], 800, 250)

	local chars, charsCnt = Statistics:GetCombinedCharsAndRealms()

	f:AddLine(format(L["Character: %s"], tostring(private.currentChar)))
	if not IsAltKeyDown() then
		f:AddLine(format(L["Realm: %s"], tostring(private.currentRealm)))
		f:AddLine(format(L["Faction: %s"], tostring(private.currentFactionName)))
		f:AddLine(format(L["Race: %s"], tostring(private.currentRace)))
		f:AddLine(format(L["Class: %s"], tostring(private.currentClassName)))
	end
	f:AddLine(format(L["Level: %s"], tostring(UnitLevel("player"))))
	f:AddLine(format(L["Played: %s"], Statistics:FormatPlayed(Statistics.currentData.timings[#Statistics.currentData.timings].played)))
	if tonumber(charsCnt) and tonumber(charsCnt) > 1 then
		f:AddLine(format(L["Gold: %s / AH-Value: %s (%s Characters)"],
			Statistics:FromCopper(private.currentCombinedGold),
			Statistics:FromCopper(private.currentCombinedAHValue),
			tostring(charsCnt)))
		f:AddLine(format(L["All Chars: %s"], tostring(chars)))
	else
		f:AddLine(format(L["Gold: %s / AH-Value: %s (%s Character)"],
			Statistics:FromCopper(private.currentCombinedGold),
			Statistics:FromCopper(private.currentCombinedAHValue),
			tostring(charsCnt)))
	end
	f:AddLine(L["Time used for:"])

	f:Display()
end

-- Create Log with Statistics
function Statistics:FillLogFromStatistics(tab)
	Statistics:DebugPrintf("FillLogFromStatistics(%s)", tostring(tab))

	if not tab then
		Statistics:DebugPrintf("ERR~  tab is nil")
		return
	end

	addon.GUI.DebugLog_Reset(tab)

	local charRealmS = Statistics:GetCombinedCharsAndRealms()

	if Statistics.currentData and Statistics.currentData.class and Statistics.currentData.timings then
		Statistics:DebugPrintf("  found statistics data")

		local sTimings = {}
		local n = 1
		for _, v in ipairs(Statistics.currentData.timings) do
			sTimings[n] = v
			n = n + 1
		end

		table.sort(sTimings, function(l, r)
			return l.timestamp < r.timestamp
		end)

		local playedAverage = 0
		local playedFirst = 0
		local playedLast = 0
		local playedLevels = 0

		for _, row in ipairs(sTimings) do
			if row.level and row.level > 1 then
				if playedFirst == 0 then
					playedFirst = row.played
				end
				playedLevels = playedLevels + 1
				playedLast = row.played
			end
		end
		if playedLevels > 1 then
			playedLevels = playedLevels - 1
			playedAverage = (playedLast - playedFirst) / playedLevels
		end

		Statistics:DebugPrintf("  from:%s to:%s time:%s levels:%s m:%s",
			Statistics:FormatPlayed(playedFirst), Statistics:FormatPlayed(playedLast),
			Statistics:FormatPlayed(playedLast - playedFirst), playedLevels, Statistics:FormatPlayed(playedAverage))

		local fastest = 0
		local slowest = 0

		-- do count gold on other chars, if they are played earlier
		local lastTimestamp = 0

		for i, lentry in ipairs(sTimings) do
			local level = lentry.level
			local playedDate = lentry.timestamp
			local playedTotal = lentry.played

			local playedLevel
			local playedLevelVal
			if sTimings[i+1] and sTimings[i+1].level and sTimings[i+1].level > 0 then
				local nextPlayed = sTimings[i+1].played
				playedLevel = nextPlayed - lentry.played
				playedLevelVal = playedLevel

				if i == 1 then
					fastest = playedLevel
					slowest = playedLevel
				end

				if fastest > playedLevel then
					fastest = playedLevel
				end
				if slowest < playedLevel then
					slowest = playedLevel
				end

				if playedAverage > 0 then
					if playedAverage > (playedLevelVal) then
						playedLevel = "|cFF88ff88" .. Statistics:FormatPlayed(playedLevelVal) .. "|r"
					else
						playedLevel = "|cFFff8888" .. Statistics:FormatPlayed(playedLevelVal) .. "|r"
					end
				else
					playedLevel = Statistics:FormatPlayed(playedLevelVal)
				end
			else
				playedLevel = ""
				playedLevelVal = 0
			end

			Statistics:DebugPrintf("  %s: Lvl:%s Date:%s Played:%s",
				tostring(i), tostring(lentry.level), date(L["%Y-%m-%d %H:%M:%S"], lentry.timestamp or 0), playedLevel)

			if sTimings[i].level == 0 and sTimings[i].playedThis then
				playedLevelVal = sTimings[i].playedThis
				if playedAverage > (playedLevelVal) then
					playedLevel = "|cFF88ff88" .. Statistics:FormatPlayed(playedLevelVal) .. "|r"
				else
					playedLevel = "|cFFff8888" .. Statistics:FormatPlayed(playedLevelVal) .. "|r"
				end
			end

			local playedZone
			local zone, subzone = lentry.zone or "", lentry.subzone or ""
			if zone then
				playedZone = zone
				if subzone and subzone ~= "" then
					playedZone = playedZone .. " (" .. subzone .. ")"
				end
			end
			if lentry.initial then
				playedZone = L["(Initial entry)"]
				playedZone = "|cFF808080" .. playedZone .. "|r"
			end

			-- add gold from alts
			local gold = lentry.gold or 0
			gold = gold + Statistics:FromAltsGold(charRealmS, lastTimestamp, lentry.timestamp)
			local ahvalue = lentry.ahvalue or 0
			ahvalue = ahvalue + Statistics:FromAltsAHValue(charRealmS, lastTimestamp, lentry.timestamp)
			lastTimestamp = lentry.timestamp

			addon.GUI.DebugLog(tab, "1=%s# 2=%s# 3=%s# 4=%s# 5=%s# 6=%s# 7=%s# 8=%s#",
				tostring(level), tostring(playedDate), tostring(playedTotal),
				tostring(playedLevel), tostring(playedLevelVal), tostring(playedZone), tostring(gold), tostring(ahvalue))

			private.currentCombinedGold = gold
			private.currentCombinedAHValue = ahvalue
		end
		Statistics:DebugPrintf("  " ..
				L["Average:"] .. " " .. Statistics:FormatPlayed(playedAverage) .. " " ..
				"|cFFff8888" .. L["Slowest:"] .. " " .. Statistics:FormatPlayed(slowest) .. "|r " ..
				"|cFF88ff88" .. L["Fastest:"] .. " " .. Statistics:FormatPlayed(fastest) .. "|r")

		if addon.GUI.display then
			addon.GUI.display:SetStatusText(
				L["Average:"] .. " " .. Statistics:FormatPlayed(playedAverage) .. " " ..
				"|cFFff8888" .. L["Slowest:"] .. " " .. Statistics:FormatPlayed(slowest) .. "|r " ..
				"|cFF88ff88" .. L["Fastest:"] .. " " .. Statistics:FormatPlayed(fastest) .. "|r")
		end
	end
end

function Statistics:IsRealmInCombinedCharsAndRealms(c, r, cr)
	-- Statistics:DebugPrintf("IsRealmInCombinedCharsAndRealms(%s, %s, %s)", tostring(c), tostring(r), tostring(cr))

	local charRealm = c .. r
	charRealm = gsub(charRealm, " ", "")

	local charRealms = cr
	charRealms = gsub(charRealms, "-", "")

	-- Statistics:DebugPrintf("  charRealm=%s in charRealmS=%s ?", tostring(charRealm), tostring(charRealms))

	return string.find(charRealms:lower(),charRealm:lower())
end

-- add gold from alts <= timestamp
function Statistics:FromAltsGold(charRealmS, fromTimestamp, toTimestamp)
	--Statistics:DebugPrintf("FromAltsGold(%s, %s, %s)",
	--	tostring(charRealmS), addon.GUI.DebugLog_TimeToString(fromTimestamp), addon.GUI.DebugLog_TimeToString(toTimestamp))

	local val = 0
	for guid, data in pairs(private.addonData["players"]) do
		if guid ~= private.currentGUID then

			if Statistics:IsRealmInCombinedCharsAndRealms(data.name, data.realm, charRealmS) then
				--Statistics:DebugPrintf("    Check %s-%s", tostring(data.name), tostring(data.realm))

				local ts = 0
				local tsval = 0
				local tsact = 0
				local tsvalact = 0
				private.tslastval = private.tslastval or {}
				private.tslastval[data.name .. data.realm] = private.tslastval[data.name .. data.realm] or 0
				if fromTimestamp == 0 then
					private.tslastval[data.name .. data.realm] = 0
				end
				if data.timings then
					for _, timings in pairs(data.timings) do
						if timings and timings.timestamp and tonumber(timings.timestamp) then
							--Statistics:DebugPrintf("    level=%s, timestamp=%s, gold=%s",
							--	tostring(timings.level), addon.GUI.DebugLog_TimeToString(timings.timestamp), Statistics:FromCopper(timings.gold))
							if timings.timestamp > fromTimestamp and timings.timestamp < toTimestamp then
								if timings.timestamp > ts then
									--Statistics:DebugPrintf("WARN~      in range!")
									ts = timings.timestamp
									tsval = timings.gold or 0
								end
							end
						end
						if timings and timings.level and tonumber(timings.level) then
							if timings.level == 0 then
								tsact = timings.timestamp
								tsvalact = timings.gold or 0
							end
						end
					end
				end
				if ts > 0 then
					--Statistics:DebugPrintf("      added %s", tostring(tsval))
					val = val + tsval
					private.tslastval[data.name .. data.realm] = tsval
				elseif tsval == 0 and tsact > 0 and tsact < toTimestamp then
					--Statistics:DebugPrintf("      added current %s", tostring(tsvalact))
					val = val + tsvalact
					private.tslastval[data.name .. data.realm] = tsvalact
				else
					--Statistics:DebugPrintf("      added last value %s", tostring(private.tslastval[data.name .. data.realm]))
					val = val + private.tslastval[data.name .. data.realm]
				end
			end
		end
	end

	--Statistics:DebugPrintf("OK~    = %s", tostring(val))
	return val
end

-- add AH value from alts <= timestamp
function Statistics:FromAltsAHValue(charRealmS, fromTimestamp, toTimestamp)
	--Statistics:DebugPrintf("FromAltsAHValue(%s, %s, %s)", tostring(charRealmS),
	--	addon.GUI.DebugLog_TimeToString(fromTimestamp), addon.GUI.DebugLog_TimeToString(toTimestamp))

	local val = 0
	for guid, data in pairs(private.addonData["players"]) do
		if guid ~= private.currentGUID then

			if Statistics:IsRealmInCombinedCharsAndRealms(data.name, data.realm, charRealmS) then
				--Statistics:DebugPrintf("    Check %s-%s", tostring(data.name), tostring(data.realm))

				local ts = 0
				local tsval = 0
				local tsact = 0
				local tsvalact = 0
				private.tslastAHval = private.tslastAHval or {}
				private.tslastAHval[data.name .. data.realm] = private.tslastAHval[data.name .. data.realm] or 0
				if fromTimestamp == 0 then
					private.tslastAHval[data.name .. data.realm] = 0
				end
				if data.timings then
					for _, timings in pairs(data.timings) do
						if timings and timings.timestamp and tonumber(timings.timestamp) then
							--Statistics:DebugPrintf("    level=%s, timestamp=%s, ah=%s",
							--	tostring(timings.level), addon.GUI.DebugLog_TimeToString(timings.timestamp), Statistics:FromCopper(timings.ahvalue))
							if timings.timestamp > fromTimestamp and timings.timestamp < toTimestamp then
								if timings.timestamp > ts then
									--Statistics:DebugPrintf("WARN~      in range!")
									ts = timings.timestamp
									tsval = timings.ahvalue or 0
								end
							end
						end
						if timings and timings.level and tonumber(timings.level) then
							if timings.level == 0 then
								tsact = timings.timestamp
								tsvalact = timings.ahvalue or 0
							end
						end
					end
				end
				if ts > 0 then
					--Statistics:DebugPrintf("      added %s", tostring(tsval))
					val = val + tsval
					private.tslastAHval[data.name .. data.realm] = tsval
				elseif tsval == 0 and tsact > 0 and tsact < toTimestamp then
					--Statistics:DebugPrintf("      added current %s", tostring(tsvalact))
					val = val + tsvalact
					private.tslastAHval[data.name .. data.realm] = tsvalact
				else
					--Statistics:DebugPrintf("      added last value %s", tostring(private.tslastAHval[data.name .. data.realm]))
					val = val + private.tslastAHval[data.name .. data.realm]
				end
			end
		end
	end

	--Statistics:DebugPrintf("OK~    = %s", tostring(val))
	return val
end


-- build money string from copper
function Statistics:FromCopper(copper, isVS)
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

function Statistics:FormatPlayed(seconds)
	if not tonumber(seconds) then
		return ""
	end

	local SECONDS_PER_MINUTE = 60

	local d = floor(seconds / SECONDS_PER_DAY)
	local h = floor((seconds - (d * SECONDS_PER_DAY)) /  SECONDS_PER_HOUR)
	local m = floor((seconds - (d * SECONDS_PER_DAY) - (h * SECONDS_PER_HOUR)) / SECONDS_PER_MINUTE)
	local s = seconds - (d * SECONDS_PER_DAY) - (h * SECONDS_PER_HOUR) - (m * SECONDS_PER_MINUTE)
	local result

	local vsC = ""
	local vsR = ""

	if (d > 0) or (h > 0) or (m > 0) then
		result = vsC .. format("%02d", s) .. vsR .. "|cffffd70as|r"
	else
		result = vsC .. format("%d", s) .. vsR .. "|cffffd70as|r"
	end
	if (d > 0) or (h > 0) then
		result = vsC .. format("%02d", m) .. vsR .. "|cffffd70am|r " .. result
	else
		if (m > 0) then
			result = vsC .. format("%d", m) .. vsR .. "|cffffd70am|r " .. result
		end
	end
	if (d > 0) then
		result = vsC .. format("%02d", h) .. vsR .. "|cffffd70ah|r " .. result
	else
		if (h > 0) then
			result = vsC .. format("%d", h) .. vsR .. "|cffffd70ah|r " .. result
		end
	end
	if (d > 0) then
		result = vsC .. format("%d", d) .. vsR .. "|cffffd70ad|r " .. result
	end

	return result
end

------------------------------------------------------------------------------
-- Events

function Statistics.ProcessEvent(event, ...)
	Statistics:DebugPrintf("ProcessEvent(%s)", tostring(event))


	if event == "TIME_PLAYED_MSG" then
		Statistics:UnregisterEvent("TIME_PLAYED_MSG")
		private.registeredForTimePlayed = false

		-- update first entry
		if Statistics.currentData and Statistics.currentData.timings then
			local played, playedThis = ...
			local updated = false

			-- update first entry
			if Statistics.currentData.timings[1] then
				if Statistics.currentData.timings[1].played == 0 then
					Statistics.currentData.timings[1].played = played
					Statistics.currentData.timings[1].playedThis = playedThis
					Statistics:DebugPrintf("  setting timings %s, %s for first entry", tostring(played), tostring(playedThis))
					updated = true
				end
			end

			-- update status entry
			if Statistics.currentData.timings[#Statistics.currentData.timings]
				and Statistics.currentData.timings[#Statistics.currentData.timings].level
				and Statistics.currentData.timings[#Statistics.currentData.timings].level == 0 then

				Statistics.currentData.timings[#Statistics.currentData.timings].timestamp = time()
				Statistics.currentData.timings[#Statistics.currentData.timings].played = played
				Statistics.currentData.timings[#Statistics.currentData.timings].playedThis = playedThis
				Statistics.currentData.timings[#Statistics.currentData.timings].gold = GetMoney()
				Statistics.currentData.timings[#Statistics.currentData.timings].zone = GetRealZoneText()
				Statistics.currentData.timings[#Statistics.currentData.timings].subzone = GetSubZoneText()

				Statistics:DebugPrintf("  setting timings %s, %s for status entry", tostring(played), tostring(playedThis))
				updated = true
			end

			-- update last entry (level up)
			local lastEntry = #Statistics.currentData.timings - 1
			if lastEntry > 1 then
				if Statistics.currentData.timings[lastEntry].played == 0 then
					Statistics.currentData.timings[lastEntry].played = played
					Statistics:DebugPrintf("  setting timings %s, %s for last entry", tostring(played), tostring(playedThis))
					updated = true
				end
			end

			if updated then
				if addon.GUI.display then
					addon.Statistics:FillLogFromStatistics(addon.GUI.view)
					addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
				end
			end
		end
	end

	if event == "PLAYER_LEVEL_UP" then
		local level = ...
		Statistics:TriggerLevelUp(level)
	end
end

function Statistics:TriggerLevelUp(level)
	Statistics:DebugPrintf("TriggerLevelUp(%s)", tostring(level))

	if not level then return end

	-- current status entry is new log entry
	Statistics:DebugPrintf("  logging level up to log line #%s", tostring(#Statistics.currentData.timings))
	Statistics.currentData.timings[#Statistics.currentData.timings].level = level
	Statistics.currentData.timings[#Statistics.currentData.timings].timestamp = time()
	Statistics.currentData.timings[#Statistics.currentData.timings].played = 0
	Statistics.currentData.timings[#Statistics.currentData.timings].playedThis = nil
	Statistics.currentData.timings[#Statistics.currentData.timings].gold = GetMoney()
	Statistics.currentData.timings[#Statistics.currentData.timings].zone = GetRealZoneText()
	Statistics.currentData.timings[#Statistics.currentData.timings].subzone = GetSubZoneText()

	-- Create Status Entry
	Statistics:DebugPrintf("  creating new status entry")
	local statusEntry = {
		level = 0,
		timestamp = time() + 1,
		gold = GetMoney(),
		ahvalue = Statistics.currentData.timings[#Statistics.currentData.timings].ahvalue or 0,
		zone = GetRealZoneText(),
		subzone = GetSubZoneText(),
		played = 0,
		gameVersion = GetBuildInfo(),
		tocVersion = select(4, GetBuildInfo()),
	}
	table.insert(Statistics.currentData.timings, statusEntry)

	if addon.GUI.display then
		addon.Statistics:FillLogFromStatistics(addon.GUI.view)
		addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
	end

	Statistics:TriggerUpdateTimes()
end

-- Debugging: disabled after test!
-- LLUP = function() Statistics:TriggerLevelUp(Statistics.currentData.timings[#Statistics.currentData.timings-1].level + 1) end

function Statistics:TriggerUpdateTimes()
	Statistics:DebugPrintf("TriggerUpdateTimes")
	if private.registeredForTimePlayed then
		RequestTimePlayed()
	else
		private.registeredForTimePlayed = true
		Statistics:RegisterEvent("TIME_PLAYED_MSG", Statistics.ProcessEvent)
		RequestTimePlayed()
	end
end

function Statistics.CacheAHouseUpdateCB(cache)
	Statistics:DebugPrintf("CacheAHouseUpdateCB(%s)", tostring(cache))

	local total = 0
	local lastTotal = Statistics.currentData.timings[#Statistics.currentData.timings].ahvalue or 0

	if cache then
		for _, val in pairs(cache) do
			-- Statistics:DebugPrintf(" #%s: %s x %s, State %s: %s", tostring(j), tostring(val.cnt), tostring(val.lnk), tostring(val.sts),
			-- 	Statistics:FromCopper(val.buy))
			if val and val.sts and val.sts == 0 then
				local price = val.buy or val.bid or 0
				total = total + price * (val.cnt or 0)
			end
		end
	end

	Statistics.currentData.timings[#Statistics.currentData.timings].ahvalue = total

	Statistics:DebugPrintf(L["AH Value: %s"], Statistics:FromCopper(total or 0))
	if total ~= lastTotal then
		addon:Printf(L["AH Value: %s"], Statistics:FromCopper(total or 0))

		if addon.GUI.display then
			addon.Statistics:FillLogFromStatistics(addon.GUI.view)
			addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
		end
	end
end

-- EOF
