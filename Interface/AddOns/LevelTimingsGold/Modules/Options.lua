----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Modules/Options.lua - Addon Options
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212 globals DLAPI

local addonName, addon = ...
local Options = addon:NewModule("Options", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local LibDBIcon = LibStub("LibDBIcon-1.0")
--------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- Settings

Options.defaults = {
	profile = {
	},
	global = {
		showMinimapButton = false,
		showHUD = true,
		showGoldHUD = true,
		showTotalPlayedHUD = true,
		fontSizeHUD = 13,
		xPosHUD = "100",
		yPosHUD = "-100",
		levelRangeHUD = 32,
		timeFormat = "%m-%d %H:%M:%S",
		maxVerbosity = "6",
		textSize = "11",
		combineChars = "",
		exportButtons = true,
		discardCopper = false,
		discardSilver = false,
		addPseudoLevel = true,
		addPseudoLevelAlways = false,
		addPseudoLevelHours = false,
		minimap = {
			hide = false,
		},
	},
}

Options.timeFormat = {}
Options.timeFormat["ago"]  = L["_ Hr. _ Min. ago"]
Options.timeFormat["%d.%m %H:%M:%S"] = "DD.MM HH:MM"
Options.timeFormat["%d.%m.%Y %H:%M:%S"] = "DD.MM.YYYY HH:MM"
Options.timeFormat["%m/%d %H:%M:%S"] = "MM/DD HH:MM"
Options.timeFormat["%Y/%m/%d %H:%M:%S"] = "YYYY/MM/DD HH:MM"
Options.timeFormat["%m-%d %H:%M:%S"] = "MM-DD HH:MM"
Options.timeFormat["%Y-%m-%d %H:%M:%S"] = "YYYY-MM-DD HH:MM"

Options.textSizes = {}
Options.textSizes["10"]  = "10"
Options.textSizes["11"]  = "11"
Options.textSizes["12"]  = "12"
Options.textSizes["13"]  = "13"

------------------------------------------------------------------------------
-- Debug Stuff

function Options:DebugPrintf(...)
	if addon.isDebug then
		local status, res = pcall(format, ...)
		if status then
			addon:DebugLog("Opt~" .. res)
		end
	end
end

------------------------------------------------------------------------------
-- Addon Loading / Player Login/Logout

function Options:Login()
	Options:DebugPrintf("Login()")
end

function Options.GetOptions(_, _, appName)
	if appName == addonName then

		local wowV, wowP = GetBuildInfo()
		local wowVersion = "|nGame: WoW (ID " .. WOW_PROJECT_ID .. "), Version: " .. wowV .. ", Build: " .. wowP

		local options = {
			type = "group",
			name = addon.METADATA.NAME .. " (" .. addon.METADATA.VERSION .. ")",
			get = function(info)
					return addon.db.global[info[#info]] or ""
				end,
			set = function(info, value)
					addon.db.global[info[#info]] = value
					Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
					if addon.GUI.display then
						addon.Statistics:FillLogFromStatistics(addon.GUI.view)
						addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
						-- addon.GUI.container:Reload()
					end
				end,
			args = {
				desc0 = {
					type = "description",
					order = 0,
					name = "|cff99ccff-: by " .. GetAddOnMetadata(addonName, "Author") .. " :-|r|n|n" .. GetAddOnMetadata(addonName, "Notes"),
					fontSize = "medium",
				},
				desc001 = {
					type = "description",
					order = 0.01,
					name = wowVersion,
				},
				header150 = {
					type = "header",
					name = L["Head Up Display"],
					order = 1.50,
				},
				showHUD = {
					type = "toggle",
					name = L["Show HUD"],
					desc = L["If checked, the onscreen HUD is displayed."],
					order = 1.51,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
							addon.HUD:SecTimer()
						end,
				},
				resetHUD = {
					type = "toggle",
					name = L["Reset HUD Position"],
					desc = L["If checked, the HUD position is reset."],
					order = 1.52,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							if addon.db.global[info[#info]] then
								addon.db.global[info[#info]] = false
								addon.db.global.xPosHUD = "360"
								addon.db.global.yPosHUD = "-200"
								addon.db.global.showHUD = true
								addon.HUD:UpdateHUDPosition()
								addon:Printf(L["HUD position was reset."])
							end
						end,
				},
				showGoldHUD = {
					type = "toggle",
					name = L["Show Gold"],
					desc = L["If checked, the gold column is displayed."],
					order = 1.53,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
							addon.HUD:SecTimer()
						end,
				},
				desc154 = {
					type = "description",
					order = 1.54,
					name = L["|cffff8888Move the HUD with Ctrl-Mouse|r"],
					fontSize = "medium",
					width = 1.7,
				},
				levelRangeHUD = {
					type = 'range',
					name = L["Recent Levels"],
					desc = L["Select how many recent level entries are shown."],
					min = 1,
					max = 75,
					isPercent = false,
					step = 1,
					width = 'full',
					order = 1.55,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
							addon.HUD:SecTimer()
						end,
				},
				fontSizeHUD = {
					type = 'range',
					name = L["Font Size"],
					desc = L["Select the font sizes for the HUD"],
					min = 11,
					max = 20,
					isPercent = false,
					step = 1,
					width = 'full',
					order = 1.56,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
							addon.HUD:UpdateHUDFonts()
							addon.HUD:SecTimer()
						end,
				},
				header200 = {
					type = "header",
					name = L["Misc."],
					order = 2.00,
				},
				discardSilver = {
					type = "toggle",
					name = L["Discard Silver"],
					desc = L["If checked, any values below 1g are not displayed."],
					order = 2.5,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
				},
				discardCopper = {
					type = "toggle",
					name = L["Discard Copper"],
					desc = L["If checked, any values below 1s are not displayed."],
					order = 2.6,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
				},
				addPseudoLevel = {
					type = "toggle",
					name = L["Add an entry once a day (>= 60)"],
					desc = L["If checked, an entry will be added once a day after your char is 60 (5 minutes after login)."],
					order = 3.0,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
				},
				addPseudoLevelAlways = {
					type = "toggle",
					name = L["Add an entry once a day"],
					desc = L["If checked, an entry will be added once a day (5 minutes after login)."],
					order = 3.05,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
				},
				addPseudoLevelHours = {
					type = "toggle",
					name = L["Add an entry every hour"],
					desc = L["If checked, an entry will be added every hour."],
					order = 3.06,
					width = 1.5,
					get = function(info) return addon.db.global[info[#info]] end,
				},
				combineChars = {
					type = "input",
					name = L["Additional Characters"],
					desc = L["The values of these characters are added to the current one. If empty, then only the values of the current character are displayed."],
					order = 3.1,
					width = "full",
					get = function(info)
						return addon.db.global.combineChars
					end,
					set = function(info, value)
						if value then
							addon.db.global.combineChars = value
							if addon.GUI.display then
								addon.GUI.display:Fire("OnClose")
								addon:ShowGUI()
							end
						end
					end,
				},
				header100 = {
					type = "header",
					name = L["UI"],
					order = 4.00,
				},
				timeFormat = {
					type = "select",
					style = "dropdown",
					name = L["Time Format"],
					desc = L["Select the format to display times."],
					order = 4.001,
					width = "full",
					values = Options.timeFormat,
				},
				exportButtons = {
					type = "toggle",
					name = L["Display Export Buttons (CSV, HTML, MD)"],
					desc = L["If checked, the export buttons to export data to CSV, HTML or MD format are enabled"],
					order = 4.002,
					width = 1.9,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
						addon.db.global[info[#info]] = value
						Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
						if addon.GUI.display then
							addon.GUI.container:Reload()
						end
					end,
				},
				showMinimapButton = {
					type = "toggle",
					name = L["Show Minimap Button"],
					desc = L["If checked, the minimap button is present."],
					order = 4.003,
					width = 1.1,
					get = function(info) return addon.db.global[info[#info]] end,
					set = function(info, value)
							addon.db.global[info[#info]] = value
							if value then
								LibDBIcon:Show(addonName)
							else
								LibDBIcon:Hide(addonName)
							end
							Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
						end,
				},
				desc102 = {
					type = "description",
					order = 4.003,
					name = L["|cffff8888Changing the font size causes an user interface reload!|r"],
					fontSize = "medium",
				},
				textSize = {
					type = "select",
					style = "dropdown",
					name = L["Font Size"],
					desc = L["Choose the font size. Changing the size causes an user interface reload!"],
					order = 4.004,
					width = "double",
					values = Options.textSizes,
					set = function(info, value)
						addon.db.global[info[#info]] = value
						Options:DebugPrintf("OK~Set %s = %s", tostring(info[#info]), tostring(value))
						ReloadUI()
					end
				},
			},
		}

		return options
	end
end

-- EOF
