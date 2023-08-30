----------------------------------------------------------------------------------------------------------------------------------------------------
-- Level Timings and Gold - Statistics for Level Challenges
----------------------------------------------------------------------------------------------------------------------------------------------------
-- Locale/deDE.lua - Strings for deDE
--
-- Author: Expelliarm5s / July 2023 / All Rights Reserved
--
-- Version 2.1.31
-------------------------------------------------------------------------------------------------------

local addonName, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "deDE")
if not L then return end
------------------------------------------------------------------------------
-- luacheck: max_line_length 400

L["enter /%s for interface"] = "/%s zeigt das Addonfenster"
L["Debug is off"] = "Fehlersuche aus"
L["Debug is on"] = "Fehlersuche an"

L["No"] = "LfdNr"
L["ItemID"] = "Item-ID"
L["Item"] = true
L["Message"] = true
L["Sort by No"] = "Sortieren nach LfdNr"
L["Sort by Item Level"] = "Sortieren nach Item-Level"
L["Sort by ItemID"] = "Sortieren nach Item-ID"
L["Sort by Item"] = "Sortieren nach Item"
L["Sort by Message"]= "Sortieren nach Message"
L["Num"] = "Anz"

L["now"] = "jetzt"
L["Statistics"] = "Statistik"
L["Statistics for "] = "Statistik für "
L["%Y-%m-%d %H:%M:%S"] = "%d.%m.%Y %H:%M:%S"
L["unfinished"] = "läuft"
L["(Initial entry)"] = "(Ersteintrag)"
L["(Unknown)"] = "(Unbekannt)"
L["Level "] = true
L["Date/Time"] = "Datum/Zeit"
L["Total Played"] = "Gesamtzeit"
L["Played on Level"] = "Levelzeit"
L["  Zone"] = true
L["Gold"] = true
L["Sort by Level"] = "Sortieren nach Level"
L["Sort by Date/Time"] = "Sortieren nach Datum/Zeit"
L["Sort by Total Played"] = "Sortieren nach Gesamtzeit"
L["Sort by Played on Level"] = "Sortieren nach Levelzeit"
L["Sort by Zone"] = "Sortieren nach Zone"
L["Sort by Gold"] = "Sortieren nach Gold"

L["Average:"] = "Durchschnitt:"
L["Slowest:"] = "Langsamster:"
L["Fastest:"] = "Schnellster:"

L["Your AH value could not be determined. If you have auctions, please open the AH again and switch to the auction window within 2 seconds."] = "Der AH-Wert konnte nicht ermittelt werden. Wenn Du Auktionen hast, bitte das AH erneut öffnen und binnen 2 Sekunden auf den Auktionen-Reiter wechseln."
L["AH Value: %s"] = "AH-Wert: %s"
L["AH Value"] = "AH-Wert"

L["Character: %s"] = "Charaktername: %s"
L["Realm: %s"] = "Server: %s"
L["Faction: %s"] = "Fraktion: %s"
L["Race: %s"] = "Volk: %s"
L["Class: %s"] = "Klasse: %s"
L["Level: %s"] = true
L["Gold: %s"] = true
L["Played: %s"] = "Spielzeit: %s"
L["All Chars: %s"] = "Mitgezählte Charakter: %s"
L["Time used for:"] = "Zeit verbracht mit:"
L["Gold: %s / AH-Value: %s (%s Character)"] = "Gold: %s / AH-Wert: %s (Summen von %s Charakter)"
L["Gold: %s / AH-Value: %s (%s Characters)"] = "Gold: %s / AH-Wert: %s (Summen von %s Charakteren)"

L["Goood Mooorning!"] = "Moin, Moin!"
L["Deleting entry %s"] = "Lösche Eintrag %s"
L["Entry added"] = "Eintrag hinzugefügt"

-- Options.lua
L["Misc."] = "Verschiedenes"
L["Show HUD"] = "Zeige HUD an"
L["If checked, the onscreen HUD is displayed."] = "Wenn aktiviert, wird das HUD angezeigt."
L["Reset HUD Position"] = "HUD-Position zurücksetzen"
L["If checked, the HUD position is reset."] = "Wenn aktiviert, wird die Position des HUD zurückgesetzt"
L["Movable HUD"] = "Bewegliches HUD"
L["If checked, the onscreen HUD is movable."] = "Wenn aktiviert, kann das HUD mit der Maus bewegt werden"
L["Recent Levels"] = "Jüngste Level"
L["Select how many recent level entries are shown."] = "Wähle aus, wieviele der jüngsten Level angezeigt werden."
L["Select the font sizes for the HUD"] = "Wähle die Schriftgröße für das HUD."
L["HUD position was reset."] = "HUD-Position wurde zurückgesetzt"
L["Show Gold"] = "Zeige Goldwerte"
L["If checked, the gold column is displayed."] = "Wenn aktiviert, wird das Gold angezeigt."
L["|cffff8888Move the HUD with Ctrl-Mouse|r"] = "|cffff8888HUD mit Strg+linke Maustaste verschieben.|r"
L["Add an entry every hour"] = "Jede Stunde einen Eintrag hinzufügen"
L["If checked, an entry will be added every hour."] = "Wenn aktiviert, wird jede Stunde nach Login einen Eintrag hinzugefügt."
L["Time Format"] = "Zeitformat"
L["Select the format to display times."] = "Wähle das gewünschte Zeitformat aus."
L["Max. Verbosity Level"] = "Max. Ausführlichkeitswert"
L["Select the maximum verbosity level to show up in the log. Values: 1 to 9. Default: 6."] = "Wähle den maximalen Ausführlichkeitswert der Zeilen, die im Log erscheinen sollen. Werte von 1 bis 9. Default: 6."
L["Discard Silver"] = "Keine Silberwerte anzeigen"
L["If checked, any values below 1g are not displayed."] = "Wenn aktiviert, werden keine Werte unter 1g angezeigt."
L["Discard Copper"] = "Keine Kupferwerte anzeigen"
L["If checked, any values below 1s are not displayed."] = "Wenn aktiviert, werden keine Werte unter 1s angezeigt."
L["Show Minimap Button"] = "Minimap-Knopf anzeigen"
L["If checked, the minimap button is present."] = "Wenn aktiviert, wird ein Minimap-Knopf angezeigt"
L["Export data for the challenge channel (Alt + Click for short version)."] = "Exportiere die Informationen für den Challenge-Kanal (Alt+Klick für die Kurzversion)."
L["Data for the challenge channel"] = "Informationen für den Challenge-Kanal"

L["Add an entry once a day (>= 60)"] = "Jeden Tag Eintrag hinzufügen (>=60)"
L["If checked, an entry will be added once a day after your char is 60 (5 minutes after login)."] = "Wenn aktiviert, wird jeden Tag ein Eintrag hinzugefügt (5 Minuten nach dem Einloggen und nur für Chars >= 60)"

L["Add an entry once a day"] = "Jeden Tag einen Eintrag hinzufügen"
L["If checked, an entry will be added once a day (5 minutes after login)."] = "Wenn aktiviert, wird jeden Tag ein Eintrag hinzugefügt (5 Minuten nach dem Einloggen)"

L["Additional Characters"] = "Zusätzliche Charactere"
L["The values of these characters are added to the current one. If empty, then only the values of the current character are displayed."] = "Die Werte dieser Chars (nur wenn auf gleichem Server!) werden dem aktuellen hinzugezählt (Beispiel: Peter-Antonidas, Klaus-Antonidas, Chantall-Teldrassil). Falls nichts angegeben ist, zählen nur die Werte des aktuellen Characters."

L["Font Size"] = "Textgröße"
L["Choose the font size. Changing the size causes an user interface reload!"] = "Textgröße festlegen. Eine Änderung läd das Interface neu!"
L["|cffff8888Changing the font size causes an user interface reload!|r"] = "|cffff8888Bei Änderung der Textgröße läd das Interface neu!|r"

L["Display Export Buttons (CSV, HTML, MD)"] = "Zeige die Export-Knöpfe (CSV, HTML, MD) an"
L["If checked, the export buttons to export data to CSV, HTML or MD format are enabled"] = "Wenn aktiviert, werden die Export-Knöpfe angezeigt, um Daten ins CSV, HTML oder Mardown-Format zu exportieren."

-- EOF
