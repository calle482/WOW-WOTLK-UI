----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Modules/GUI_debuglog_fmt_statistics.lua - Content for Statistics List
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212
-- luacheck: globals
-- luacheck: max_line_length 250

local addonName, addon = ...
local GUI = addon:GetModule("GUI")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
-- local LibQTip = LibStub("LibQTip-1.0")
local private = {}
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Settings

-- Statistics Debug Log Format
private.statistics = {}
private.statistics.colNames = { L["Level "], L["Date/Time"], L["Total Played"], L["Played on Level"], L["  Zone"],    L["Gold"], L["AH Value"],}
private.temp = 1                -0.06       -0.13           -0.14              -0.14                                -0.12         -0.12
private.statistics.colWidth = { -0.06,       0.13,          -0.14,             -0.14,                 private.temp, -0.12,        -0.12, }
private.statistics.colFlex =  { "flex",     "flex",         "flex",            "flex",               "search",       "flex",      "flex",}
private.statistics.statusText = {
			L["Sort by Level"],
			L["Sort by Date/Time"],
			L["Sort by Total Played"],
			L["Sort by Played on Level"],
			L["Sort by Zone"],
			L["Sort by Gold"],
			L["Sort by AH Value"],
		}
private.statistics.GetSTData = function(...) return private.GetSTData_statistics(...) end

------------------------------------------------------------------------------
-- Scrolling Table Data

-- Return Scrolling Table Data
function private.GetSTData_statistics(a, flex, filter)
	GUI:DebugPrintf("GetSTData_statistics(%s, %s, %s)", tostring(a), tostring(flex), tostring(filter))

	-- generate content only if visible
	if not GUI.display or GUI.view ~= a then
		GUI:DebugPrintf("... nothing done.")
		return
	end

	local content = {}

	-- generate content only if log data present
	addon.debuglog = addon.debuglog or {}
	if not addon.debuglog[a] then
		return content, flex
	end

	-- generate content
	local colHasContent = {}
	for _, rdata in pairs(addon.debuglog[a]) do
		local filterMatch = nil  -- = nil -> no filter input = true -> filtered

		local c1, c2, c3, c4, c5, c6, c7, c8 = strmatch(rdata.m or "", "1=(.*)# 2=(.*)# 3=(.*)# 4=(.*)# 5=(.*)# 6=(.*)# 7=(.*)# 8=(.*)#")

		local data = {}
		data[1] = c1 or "c1"
		data[2] = c2 or "c2"
		data[3] = c3 or "c3"
		data[4] = c4 or "c4"
		data[5] = c5 or "c5"
		data[6] = c6 or "c6"
		data[7] = c7 or "c7"
		data[8] = c8 or "c8"

		-- check dropdown
		for j, col in ipairs(flex) do
			colHasContent[j] = colHasContent[j] or data[j]
			if col == "drop" then
				if filter and filter[j] and filter[j] ~= "" then
					if (filterMatch == nil or filterMatch) then
						if data[j] and filter[j] == data[j] then
							filterMatch = true
						else
							filterMatch = false
						end
					end
				end
			end
		end

		-- check search
		for j, col in ipairs(flex) do
			if col == "search" then
				if filter and filter[j] and filter[j] ~= "" then
					if (filterMatch == nil or filterMatch) then
						-- search in all column data
						local found = false
						for m, _ in pairs(data) do
							if data[m] and type(data[m]) == "string" and strfind(strlower(data[m]), strlower(filter[j])) then
								filterMatch = true
								found = true
							end
						 end
						if not found then
							filterMatch = false
						end
					end
				end
			end
		end

		if filterMatch or filterMatch == nil then
			-- convert data into final widget data
			local en = {}
			en.data = {}

			local level = 0
			if data[1] and tonumber(data[1]) then
				level = tonumber(data[1])
			end

			if level > 0 then
				en.data[1] = {"|cffffd70a" .. data[1] .. "|r  ", level}
			else
				en.data[1] = {L["now"], 999}
			end
			en.data[2] = {(level == 0 and "|cffffd70a" .. GUI.DebugLog_TimeToString(data[2]) .. "|r") or GUI.DebugLog_TimeToString(data[2]), data[2]}
			en.data[3] = {(level == 0 and "|cffffd70a" .. addon.Statistics:FormatPlayed(data[3]) .. "|r") or addon.Statistics:FormatPlayed(data[3]), tonumber(data[3]) or 0}
			en.data[4] = {data[4], tonumber(data[5]) or 0}
			en.data[5] = {(level == 0 and "  |cffffd70a" .. data[6] .. "|r") or "  " .. data[6], data[6]}
			en.data[6] = {addon.Statistics:FromCopper(data[7]), tonumber(data[7]) or 0}
			en.data[7] = {addon.Statistics:FromCopper(data[8]), tonumber(data[8]) or 0}

			tinsert(content, en)
		end
	end

	-- disable dropdown if not present
	for j, col in ipairs(flex) do
		if col == "drop" and not colHasContent[j] then
			flex[j] = ""
		end
	end

	return content, flex
end

-- Provide left + right click on table frame
GUI.debugLog_OnClick = GUI.debugLog_OnClick or {}
function GUI.debugLog_OnClick.statistics(btn, data, button)
	GUI:DebugPrintf("OnClick: %s %s %s ", tostring(btn), tostring(data), tostring(button))

	if button == "LeftButton" and IsAltKeyDown() then
		if data and data.data and data.data[2] and tonumber(data.data[2][2]) then
			addon.Statistics:DeleteEntry(tonumber(data.data[2][2]))
		end
	end
end

-- Provide tooltip on content button
GUI.debugLog_OnEnter = GUI.debugLog_OnEnter or {}
function GUI.debugLog_OnEnter.statistics(btn, data)
	GUI:DebugPrintf("OnEnter: %s %s %s ", tostring(btn), tostring(data))

end

-- Hide Tooltip
GUI.debugLog_OnLeave = GUI.debugLog_OnLeave or {}
function GUI.debugLog_OnLeave.statistics(btn, data)
	GUI:DebugPrintf("OnLeave: %s %s %s ", tostring(btn), tostring(data))

	GUI:SetStatusLine()
end

------------------------------------------------------------------------------
-- Create Statistics Tab

function GUI.CreateStatisticsTab(a, additionalUICB, forced)
	GUI:DebugPrintf("CreateStatisticsTab(%s)", tostring(a))

	if not a or type(a) ~= "string" then
		-- should not never happen!
		GUI:DebugPrintf("ERR~  missing tab name!")
		return
	end

	if GUI.guiTabs.select[a] and not forced then
		GUI:DebugPrintf("Tab %s exists.", tostring(a))
		return
	end

	-- create a new log format
	if not GUI.DebugLog_IsFormatRegistered("statistics") or forced then
		GUI.DebugLog_RegisterFormat("statistics", private.statistics)
	end

	-- adjust default data widget parameters
	addon.db.global.showExport = false
	GUI.debugLog_defaultNoSelfTab = true
	GUI.debugLog_defaultTextSize = tonumber(addon.db.global.textSize) or 11
	GUI.debugLog_defaultHeight = 400
	GUI.debugLog_defaultWidth = 1000
	GUI.debugLog_defaultHasSumLine = true

	GUI.debugLog_defaultSortTitle = 2

	GUI.debugLog_defaultFrameWidget = "LTGFrame"
	GUI.debugLog_defaultTabGroupWidget = "LTGTabGroup"
	GUI.DebugLog_SetWidgets({ data = "LTGData"})

	-- create tab as custom debug log
	GUI.DebugLog_CreateTab(a, "statistics", nil, additionalUICB)

	-- no need to have a timer
	GUI.guiTabs.timer[a] = nil

	GUI:DebugPrintf("WARN~Log for '" .. a .. "' created")

	-- no implicit Load()
	-- GUI:Load(a)

	GUI:DebugPrintf("  <<CreateStatisticsTab(%s)", tostring(a))
end

-- EOF
