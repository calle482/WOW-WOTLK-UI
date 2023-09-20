
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.1",
	},
	["profileKeys"] = {
		["Doktormabuse - Golemagg"] = "Default",
		["Kryptikk - Mograine"] = "Default",
		["Krypadin - Golemagg"] = "Default",
		["Emoshrek - Golemagg"] = "Default",
		["Dunderguld - Golemagg"] = "Default",
		["Flintn - Golemagg"] = "Default",
		["Frusendolme - Golemagg"] = "Default",
		["Tjurn - Golemagg"] = "Default",
		["Kryptik - Golemagg"] = "Default",
		["Kryptokk - Golemagg"] = "Default",
		["Kryptok - Golemagg"] = "Default",
		["Smygmeister - Golemagg"] = "Default",
		["Nohablobank - Mograine"] = "Default",
		["Hctest - Giantstalker"] = "Default",
		["Manameister - Golemagg"] = "Default",
		["Emomage - Golemagg"] = "Default",
		["Jägerskytt - Golemagg"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Unit Nameplates",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "ActionBars",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
