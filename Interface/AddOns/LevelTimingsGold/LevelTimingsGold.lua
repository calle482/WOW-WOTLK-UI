----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- LevelTimingsGold.lua
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------
-- luacheck: ignore 212 globals DLAPI

local addonName, addon = ...
addon = LibStub("AceAddon-3.0"):NewAddon(addon, addonName, "AceEvent-3.0", "AceConsole-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0")
local AceConfigDialog = LibStub("AceConfigDialog-3.0")
local AceDB = LibStub("AceDB-3.0")
------------------------------------------------------------------------------

------------------------------------------------------------------------------
-- General Settings

addon.METADATA = {
	NAME = GetAddOnMetadata(..., "Title"),
	VERSION = GetAddOnMetadata(..., "Version"),
	NOTES = GetAddOnMetadata(..., "Notes"),
}

------------------------------------------------------------------------------
-- Debug Stuff

function addon:DebugLog(...)
	-- external
	if DLAPI then DLAPI.DebugLog(addonName, ...) end
end

function addon:DebugPrintf(...)
	if addon.isDebug then
		local status, res = pcall(format, ...)
		if status then
			addon:DebugLog(res)
		end
	end
end

function addon:ToggleDebug()
	addon.isDebug = not addon.isDebug
	if (not addon.isDebug) then
		addon:Printf(L["Debug is off"])
		addon:DebugPrintf(L["Debug is off"])
	else
		addon:Printf(L["Debug is on"])
		addon:DebugPrintf(L["Debug is on"])
	end
end

------------------------------------------------------------------------------
-- Addon Initialization

-- called by AceAddon when Addon is fully loaded
function addon:OnInitialize()
	for modle in pairs(addon.modules) do
		addon[modle] = addon.modules[modle]
	end

	if DLAPI and DLAPI.SetFormat then DLAPI.SetFormat(addonName, "default") end
	addon:DebugPrintf("OnInitialize()")

	addon.handle = "ltg"
	addon.isDebug = false

	if addon.CacheAHouse then
		addon.CacheAHouse.verboseUpdate = false
	end

	addon.timerSec = 1

	-- loads data and options
	addon.db = AceDB:New(addonName .. "DB", addon.Options.defaults, true)
	AceConfigRegistry:RegisterOptionsTable(addonName, addon.Options.GetOptions)
	local optionsFrame = AceConfigDialog:AddToBlizOptions(addonName, GetAddOnMetadata(addonName, "Title"))
	addon.optionsFrame = optionsFrame

	-- initialize standard time format
	if addon.db.global.timeFormat == "default" then
		if (GetLocale() == "deDE") then
			addon.db.global.timeFormat = "%d.%m %H:%M:%S";
		else
			addon.db.global.timeFormat = "%m-%d %H:%M:%S";
		end
	end

	addon:RegisterChatCommand(addon.handle .. "debug", addon.ToggleDebug)
	addon:RegisterChatCommand(addon.handle .. "config", function()
		InterfaceOptionsFrame_OpenToCategory(GetAddOnMetadata(addonName, "Title"))
		InterfaceOptionsFrame_OpenToCategory(GetAddOnMetadata(addonName, "Title"))
		end)
	addon:RegisterChatCommand(addon.handle, function()
		if addon.GUI.display then
			addon.GUI.display:Fire("OnClose")
		else
			addon:ShowGUI()
		end
	end)

	addon:RegisterChatCommand(addon.handle .. "up", function()
		addon:Printf(L["Entry added"])
		addon.Statistics:TriggerLevelUp(UnitLevel("player"))
		end)

	addon:RegisterChatCommand(addon.handle .. "reload", function()
		if addon.GUI.display then
			addon.Statistics:FillLogFromStatistics(addon.GUI.view)
			addon.GUI.DebugLog_UpdateData(addon.GUI.view, true)
		else
			addon:ShowGUI()
		end
	end)
end

function addon:ShowGUI(tab)
	-- addon.Item:ResetNILTry()
	addon.Statistics:Load(tab)
	if addon.GUI.display then
		local title = "|cFF33FF99" .. addon.METADATA.NAME .. " (" .. addon.METADATA.VERSION .. ")|r"
		addon.GUI.display:SetTitle(title)
	end
end

-- called by AceAddon on PLAYER_LOGIN
function addon:OnEnable()
	addon:DebugPrintf("OnEnable()")
	addon:Printf("|cFF33FF99(" .. addon.METADATA.VERSION .. ")|r: " ..
		format(L["enter /%s for interface"], addon.handle))

	addon:DebugPrintf("Calling Login() in all modules")
	for modle in pairs(addon.modules) do
		if addon.modules[modle].Login then
			addon:DebugPrintf(" -> %s:Login()", modle)
			addon.modules[modle]:Login()
		end
	end

	-- initializing *:Logout loop
	addon:RegisterEvent("PLAYER_LOGOUT", function()
		addon:OnLogout()
		end)

	addon.isZDebug = addon:IsZDebugMode(UnitFullName("player"))
	if addon.isZDebug then
		addon.Statistics.currentData = {}
		addon.Statistics.currentData.name = ""
		addon.Statistics.currentData.realm = ""
		addon.Statistics.currentData.class = ""
		addon.Statistics.currentData.faction = ""
		addon.Statistics.currentData.timings = addon.Statistics.currentData.timings or {}
	end
	
	addon.sectimer = C_Timer.NewTicker(addon.timerSec, function() addon:SecTimer() end)
end

-- called on PLAYER_LOGOUT
function addon:OnLogout()
	-- loop through all modules calling *:Logout()
	addon:DebugPrintf("Calling Logout() in all modules")
	for modle in pairs(addon.modules) do
		if addon.modules[modle].Logout then
			addon:DebugPrintf(" -> %s:Logout()", modle)
			addon.modules[modle]:Logout()
		end
	end
end

------------------------------------------------------------------------------
-- Timers

-- loop through all module timers once a second
function addon:SecTimer()
	-- addon:DebugPrintf("SecTimer()")
	for modle in pairs(addon.modules) do
		if addon.modules[modle].SecTimer then
			addon.modules[modle]:SecTimer()
		end
	end
end


-- EOF
