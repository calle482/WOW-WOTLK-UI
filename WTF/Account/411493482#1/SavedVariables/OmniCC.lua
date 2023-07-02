
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.1",
	},
	["profileKeys"] = {
		["Doktormabuse - Golemagg"] = "Default",
		["Frusendolme - Golemagg"] = "Default",
		["Kryptok - Golemagg"] = "Default",
		["Tjurn - Golemagg"] = "Default",
		["Kryptik - Golemagg"] = "Default",
		["Kryptokk - Golemagg"] = "Default",
		["Flintn - Golemagg"] = "Default",
		["Krypadin - Golemagg"] = "Default",
		["Smygmeister - Golemagg"] = "Default",
		["Emoshrek - Golemagg"] = "Default",
		["Dunderguld - Golemagg"] = "Default",
		["Manameister - Golemagg"] = "Default",
		["Jägerskytt - Golemagg"] = "Default",
		["Emomage - Golemagg"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
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
		},
	},
}
OmniCC4Config = nil
