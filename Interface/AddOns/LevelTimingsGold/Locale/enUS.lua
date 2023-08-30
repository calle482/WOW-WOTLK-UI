----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Locale/enUS.lua - Strings for enUS
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------

local addonName, _ = ...
local silent = true
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true, silent)
if not L then return end
------------------------------------------------------------------------------

L["enter /%s for interface"] = true
L["Debug is off"] = true
L["Debug is on"] = true

L["No"] = true
L["ItemID"] = true
L["Item"] = true
L["Message"] = true
L["Sort by No"] = true
L["Sort by Item Level"] = true
L["Sort by ItemID"] = true
L["Sort by Item"] = true
L["Sort by Message"]= true
L["Num"] = true

L["now"] = true
L["Statistics"] = true
L["Statistics for "] = true
L["%Y-%m-%d %H:%M:%S"] = true
L["unfinished"] = true
L["(Initial entry)"] = true
L["(Unknown)"] = true
L["Level "] = true
L["Date/Time"] = true
L["Total Played"] = true
L["Played on Level"] = true
L["  Zone"] = true
L["Gold"] = true
L["Sort by Level"] = true
L["Sort by Date/Time"] = true
L["Sort by Total Played"] = true
L["Sort by Played on Level"] = true
L["Sort by Zone"] = true
L["Sort by Gold"] = true

L["Average:"] = true
L["Slowest:"] = true
L["Fastest:"] = true

L["Your AH value could not be determined. If you have auctions, please open the AH again and switch to the auction window within 2 seconds."] = true
L["AH Value: %s"] = true
L["AH Value"] = true

L["Character: %s"] = true
L["Realm: %s"] = true
L["Faction: %s"] = true
L["Race: %s"] = true
L["Class: %s"] = true
L["Level: %s"] = true
L["Gold: %s"] = true
L["Played: %s"] = true
L["All Chars: %s"] = true
L["Time used for:"] = true
L["Gold: %s / AH-Value: %s (%s Character)"] = true
L["Gold: %s / AH-Value: %s (%s Characters)"] = true

L["Goood Mooorning!"] = true
L["Deleting entry %s"] = true
L["Entry added"] = true

-- Options.lua
L["Misc."] = true
L["Show HUD"] = true
L["If checked, the onscreen HUD is displayed."] = true
L["Reset HUD Position"] = true
L["If checked, the HUD position is reset."] = true
L["Movable HUD"] = true
L["If checked, the onscreen HUD is movable."] = true
L["Recent Levels"] = true
L["Select how many recent level entries are shown."] = true
L["Show Gold"] = true
L["If checked, the gold column is displayed."] = true
L["Font Size"] = true
L["Select the font sizes for the HUD"] = true
L["HUD position was reset."] = true
L["|cffff8888Move the HUD with Ctrl-Mouse|r"] = true
L["Add an entry every hour"] = true
L["If checked, an entry will be added every hour."] = true
L["Time Format"] = true
L["Select the format to display times."] = true
L["Max. Verbosity Level"] = true
L["Select the maximum verbosity level to show up in the log. Values: 1 to 9. Default: 9."] = true
L["Discard Silver"] = true
L["If checked, any values below 1g are not displayed."] = true
L["Discard Copper"] = true
L["If checked, any values below 1s are not displayed."] = true
L["Show Minimap Button"] = true
L["If checked, the minimap button is present."] = true
L["Export data for the challenge channel (Alt + Click for short version)."] = true

L["Add an entry once a day (>= 60)"] = true
L["If checked, an entry will be added once a day after your char is 60 (5 minutes after login)."] = true

L["Add an entry once a day"] = true
L["If checked, an entry will be added once a day (5 minutes after login)."] = true

L["Data for the challenge channel"] = true

L["Additional Characters"] = true
L["The values of these characters are added to the current one. If empty, then only the values of the current character are displayed."] = true

L["Font Size"] = true
L["|cffff8888Changing the font size causes an user interface reload!|r"] = true
L["Choose the font size. Changing the size causes an user interface reload!"] = true

L["Display Export Buttons (CSV, HTML, MD)"] = true
L["If checked, the export buttons to export data to CSV, HTML or MD format are enabled"] = true

-- EOF
