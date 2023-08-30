----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- HUD.lua - Head Up Display
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212 globals DLAPI
-- luacheck: max_line_length 160

local addonName, addon = ...
local HUD = addon:NewModule("HUD", "AceEvent-3.0", "AceConsole-3.0", "AceHook-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local private = {}
-------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Debug Stuff

function HUD:DebugPrintf(...)
	if addon.isDebug then
		local status, res = pcall(format, ...)
		if status then
			addon:DebugLog("HUD~" .. res)
		end
	end
end

------------------------------------------------------------------------------
-- Enable HUD

function HUD:Login()
	HUD:DebugPrintf("Login()")

	private.xPosHUD = 200
	private.yPosHUD = -200
end

-- Create Tab, Fill Data, Show UI
function HUD:Load(tab)
	HUD:DebugPrintf("Load(%s)", tostring(tab))

end

function HUD:SecTimer()
	HUD:DebugPrintf("SecTimer()")
	if private.inSec then
		return
	end
	private.inSec = true

	if addon.db.global.showHUD then
		HUD:CreateHUDFrame()

		if private.HUD then
			HUD:UpdateHUDFrame()
			private.HUD:Show()
		end
	else
		if private.HUD then
			private.HUD:Hide()
		end
	end
	private.inSec = false
end

function HUD:CreateHUDFrame()
	HUD:DebugPrintf("CreateHUDFrame()")

	if private.HUD then
		return
	end

	private.HUD = CreateFrame("Frame", "LTGHUDFrame", UIParent)
	private.HUD:ClearAllPoints()
	private.HUD:SetPoint("TOPLEFT", private.xPosHUD, private.yPosHUD)


	private.HUD.hudTitle = private.HUD:CreateFontString(nil, "ARTWORK")
	private.HUD.hudTitle:SetPoint("TOPLEFT", 0, 0)
	private.HUD.hudTitle:SetJustifyH("LEFT")
	private.HUD.hudTitle:SetJustifyV("TOP")

	private.HUD.level = private.HUD:CreateFontString(nil, "ARTWORK")
	private.HUD.level:SetPoint("TOPLEFT", private.HUD.hudTitle, "BOTTOMLEFT", 0, 0)
	private.HUD.level:SetJustifyH("RIGHT")
	private.HUD.level:SetJustifyV("TOP")

	private.HUD.playedTotal = private.HUD:CreateFontString(nil, "ARTWORK")
	private.HUD.playedTotal:SetPoint("TOPLEFT", private.HUD.level, "TOPRIGHT", 5, 0)
	private.HUD.playedTotal:SetJustifyH("RIGHT")
	private.HUD.playedTotal:SetJustifyV("TOP")

	private.HUD.playedLevel = private.HUD:CreateFontString(nil, "ARTWORK")
	private.HUD.playedLevel:SetPoint("TOPLEFT", private.HUD.playedTotal, "TOPRIGHT", 5, 0)
	private.HUD.playedLevel:SetJustifyH("RIGHT")
	private.HUD.playedLevel:SetJustifyV("TOP")

	private.HUD.gold = private.HUD:CreateFontString(nil, "ARTWORK")
	private.HUD.gold:SetPoint("TOPLEFT", private.HUD.playedLevel, "TOPRIGHT", 5, 0)
	private.HUD.gold:SetJustifyH("RIGHT")
	private.HUD.gold:SetJustifyV("TOP")

	HUD:UpdateHUDFonts()

	private.HUD:RegisterForDrag("LeftButton")

	private.HUD:SetScript("OnMouseDown", function(this, button)
		if button == "LeftButton" and IsControlKeyDown() and not this.inMoving then
			this.inMoving = true;
			this:StartMoving();
		end
		if button == "RightButton" and IsControlKeyDown() then
			addon.db.global.showGoldHUD = addon.db.global.showGoldHUD or false
			addon.db.global.showGoldHUD = not addon.db.global.showGoldHUD
			HUD:SecTimer()
		end
	end)

	private.HUD:SetScript("OnMouseUp", function(this, button)
		if button == "LeftButton" and this.inMoving then
			local _, _, _, xpos, ypos = private.HUD:GetPoint(1)
			-- print("xpos = " .. tostring(xpos) .. " ypos = " .. tostring(ypos))

			this:StopMovingOrSizing()
			this.inMoving = false

			addon.db.global.xPosHUD = tostring(xpos)
			addon.db.global.yPosHUD = tostring(ypos)

			HUD:DebugPrintf(" x = %s y = %s", tostring(addon.db.global.xPosHUD), tostring(addon.db.global.yPosHUD))

			HUD:UpdateHUDPosition()
		end
	end)

	private.HUD:SetScript("OnMouseWheel", function(this, delta)
		if IsControlKeyDown() and not this.inMoving then
			addon.db.global.levelRangeHUD = addon.db.global.levelRangeHUD or 10
			if delta then
				if delta > 0 then
					if (addon.db.global.levelRangeHUD + delta) < 75 then
						addon.db.global.levelRangeHUD = addon.db.global.levelRangeHUD + delta
					end
				else
					if (addon.db.global.levelRangeHUD + delta) > 1 then
						addon.db.global.levelRangeHUD = addon.db.global.levelRangeHUD + delta
					end
				end
				HUD:SecTimer()
			end
		end
	end)


	private.HUD:SetScript("OnHide", function(this)
		if this.inMoving then
			this:StopMovingOrSizing();
			this.inMoving = false;
		end
	end)

	HUD:UpdateHUDPosition()

	HUD:DebugPrintf("  created new HUD frame")
end

function HUD:UpdateHUDFonts()
	HUD:DebugPrintf("UpdateHUDFonts()")

	private.HUD.font = "Fonts\\ARIALN.ttf"

	private.HUD.hudTitle:SetFont(private.HUD.font, tonumber(addon.db.global.fontSizeHUD) or 13, "OUTLINE")
	private.HUD.hudTitle:SetText("title")

	private.HUD.level:SetFont(private.HUD.font, tonumber(addon.db.global.fontSizeHUD) or 13, "OUTLINE")
	private.HUD.level:SetText("level")

	private.HUD.playedTotal:SetFont(private.HUD.font, tonumber(addon.db.global.fontSizeHUD) or 13, "OUTLINE")
	private.HUD.playedTotal:SetText("playedTotal")

	private.HUD.playedLevel:SetFont(private.HUD.font, tonumber(addon.db.global.fontSizeHUD) or 13, "OUTLINE")
	private.HUD.playedLevel:SetText("playedLevel")

	private.HUD.gold:SetFont(private.HUD.font, tonumber(addon.db.global.fontSizeHUD) or 13, "OUTLINE")
	private.HUD.gold:SetText("gold")
end

function HUD:UpdateHUDPosition()
	HUD:DebugPrintf("UpdateHUDPosition()")

	private.HUD:SetMovable(true)
	private.HUD:EnableMouse(true)
	private.HUD:EnableMouseWheel(true)

	if private.HUD.inMoving then
		HUD:DebugPrintf("  in moving")
		-- print(" in moving")
		return
	end

	if not addon.db.global.xPosHUD or not tonumber(addon.db.global.xPosHUD) or
		(tonumber(addon.db.global.xPosHUD) < 0 or tonumber(addon.db.global.xPosHUD) > 1800) then
		addon.db.global.xPosHUD = tostring(private.xPosHUD)
	end
	if not addon.db.global.yPosHUD or not tonumber(addon.db.global.yPosHUD) or
		(tonumber(addon.db.global.yPosHUD) > 0 or tonumber(addon.db.global.yPosHUD) < -1000) then
		addon.db.global.yPosHUD = tostring(private.yPosHUD)
	end

	HUD:DebugPrintf(" x = %s y = %s", tostring(addon.db.global.xPosHUD), tostring(addon.db.global.yPosHUD))
	-- print(format(" x = %s y = %s", tostring(addon.db.global.xPosHUD), tostring(addon.db.global.yPosHUD)))

	private.HUD:ClearAllPoints()
	private.HUD:SetPoint("TOPLEFT", tonumber(addon.db.global.xPosHUD) or private.xPosHUD, tonumber(addon.db.global.yPosHUD) or private.yPosHUD)
end

function HUD:UpdateHUDSizes()
	HUD:DebugPrintf("UpdateHUDSizes()")

	private.HUD:SetWidth(
		private.HUD.level:GetStringWidth()
		+ private.HUD.playedTotal:GetWidth()
		+ private.HUD.playedLevel:GetWidth()
		+ private.HUD.gold:GetWidth()
		+ 10)
	private.HUD:SetHeight(private.HUD.level:GetStringHeight() + private.HUD.hudTitle:GetStringHeight() + 10)
end

function HUD:UpdateHUDFrame()
	HUD:DebugPrintf("WARN~UpdateHUDFrame()")

	if private.HUD.inMoving then
		HUD:DebugPrintf("  in moving")
		-- print(" in moving")
		return
	end

	local HUDlog = {}

	if addon.Statistics.currentData and addon.Statistics.currentData.class and addon.Statistics.currentData.timings then
		HUD:DebugPrintf("  found statistics data")

		local charRealmS = addon.Statistics:GetCombinedCharsAndRealms()

		local sTimings = {}
		local n = 1
		for _, v in ipairs(addon.Statistics.currentData.timings) do
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

		HUD:DebugPrintf("  from:%s to:%s time:%s levels:%s m:%s",
			addon.Statistics:FormatPlayed(playedFirst), addon.Statistics:FormatPlayed(playedLast),
			addon.Statistics:FormatPlayed(playedLast - playedFirst), playedLevels, addon.Statistics:FormatPlayed(playedAverage))

		local fastest = 0
		local slowest = 0

		-- do count gold on other chars, if they are played earlier
		local lastTimestamp = 0

		for i, lentry in ipairs(sTimings) do
			local level = lentry.level
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
						playedLevel = "|cFF88ff88" .. addon.Statistics:FormatPlayed(playedLevelVal) .. "|r"
					else
						playedLevel = "|cFFff8888" .. addon.Statistics:FormatPlayed(playedLevelVal) .. "|r"
					end
				else
					playedLevel = addon.Statistics:FormatPlayed(playedLevelVal)
				end
			else
				playedLevel = ""
			end

			HUD:DebugPrintf("  %s: Lvl:%s Date:%s Played:%s",
				tostring(i), tostring(lentry.level), date(L["%Y-%m-%d %H:%M:%S"], lentry.timestamp or 0), playedLevel)

			if sTimings[i].level == 0 and sTimings[i].playedThis then
				playedLevelVal = sTimings[i].playedThis
				if playedAverage > (playedLevelVal) then
					playedLevel = "|cFF88ff88" .. addon.Statistics:FormatPlayed(playedLevelVal) .. "|r"
				else
					playedLevel = "|cFFff8888" .. addon.Statistics:FormatPlayed(playedLevelVal) .. "|r"
				end
			end

			-- add gold from alts
			local gold = lentry.gold or 0
			gold = gold + addon.Statistics:FromAltsGold(charRealmS, lastTimestamp, lentry.timestamp)
			lastTimestamp = lentry.timestamp

			tinsert(HUDlog, format("1=%s# 2=%s# 3=%s# 4=%s#",
				tostring(level), tostring(playedTotal), tostring(playedLevel), tostring(gold)))
		end
		HUD:DebugPrintf("  " ..
				L["Average:"] .. " " .. addon.Statistics:FormatPlayed(playedAverage) .. " " ..
				"|cFFff8888" .. L["Slowest:"] .. " " .. addon.Statistics:FormatPlayed(slowest) .. "|r " ..
				"|cFF88ff88" .. L["Fastest:"] .. " " .. addon.Statistics:FormatPlayed(fastest) .. "|r")
	end

	-- Update HUD Content
	local hudLevel = L["Level"] .. "\n"
	local hudPlayedTotal = L["Total Played"] .. "\n"
	local hudPlayedLevel = L["Played on Level"] .. "\n"
	local hudGold = L["Gold"] .. "\n"

	if not addon.db.global.levelRangeHUD or not tonumber(addon.db.global.levelRangeHUD) or
		tonumber(addon.db.global.levelRangeHUD) < 1 then
		addon.db.global.levelRangeHUD = 10
	end

	local levels = {}
	for i, rdata in ipairs(HUDlog) do
		if (#HUDlog - i) < (tonumber(addon.db.global.levelRangeHUD) or 10) then
			tinsert(levels, rdata)
		end
	end

	for _, rdata in pairs(levels) do
		local c1, c2, c3, c4 = strmatch(rdata or "", "1=(.*)# 2=(.*)# 3=(.*)# 4=(.*)#")

		-- Level
		local level = tonumber(c1)
		if level > 0 then
			hudLevel = hudLevel .. "|cffffd70a" .. c1 .. "|r" .. "\n"
		else
			hudLevel = hudLevel .. L["now"] .. "\n"
		end

		-- playedTotal
		local playedTotal = (level == 0 and "|cffffd70a" .. addon.Statistics:FormatPlayed(c2) .. "|r") or addon.Statistics:FormatPlayed(c2)
		hudPlayedTotal = hudPlayedTotal .. playedTotal .. "\n"

		-- playedLevel
		hudPlayedLevel = hudPlayedLevel .. c3 .. "\n"

		-- gold
		hudGold = hudGold .. addon.Statistics:FromCopper(c4) .. "\n"
	end

	private.HUD.hudTitle:SetText("|cFF33FF99" .. addon.METADATA.NAME .. " (" .. addon.METADATA.VERSION .. ")|r")

	HUD:DebugPrintf("  level=%s", tostring(hudLevel))
	private.HUD.level:SetText(tostring(hudLevel))

	HUD:DebugPrintf("  playedTotal=%s", tostring(hudPlayedTotal))
	private.HUD.playedTotal:SetText(tostring(hudPlayedTotal))

	HUD:DebugPrintf("  playedLevel=%s", tostring(hudPlayedLevel))
	private.HUD.playedLevel:SetText(tostring(hudPlayedLevel))

	if addon.db.global.showGoldHUD then
		HUD:DebugPrintf("  gold=%s", tostring(hudGold))
		private.HUD.gold:SetText(tostring(hudGold))
	else
		private.HUD.gold:SetText("")
	end

	-- Update HUD
	HUD:UpdateHUDSizes()
end

-- EOF
