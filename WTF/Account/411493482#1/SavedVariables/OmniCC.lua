
OmniCCDB = {
	["profileKeys"] = {
		["Doktormabuse - Golemagg"] = "Default",
		["Kryptikk - Mograine"] = "Default",
		["Krypadin - Golemagg"] = "Default",
		["Nohablotank - Mograine"] = "Default",
		["Emoshrek - Golemagg"] = "Default",
		["Dunderguld - Golemagg"] = "Default",
		["Flintn - Golemagg"] = "Default",
		["Frusendolme - Golemagg"] = "Default",
		["Jägerskytt - Golemagg"] = "Default",
		["Tjurn - Golemagg"] = "Default",
		["Kryptik - Golemagg"] = "Default",
		["Kryptokk - Golemagg"] = "Default",
		["Emomage - Golemagg"] = "Default",
		["Mjölkmannen - Golemagg"] = "Default",
		["Smygmeister - Golemagg"] = "Default",
		["Manameister - Golemagg"] = "Default",
		["Hctest - Giantstalker"] = "Default",
		["Kryptok - Golemagg"] = "Default",
		["Nohablobank - Mograine"] = "Default",
		["Kojävelk - Golemagg"] = "Default",
	},
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.1.2",
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
				{
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["id"] = "Plater Nameplates Rule",
					["priority"] = 4,
					["theme"] = "Plater Nameplates Theme",
				}, -- [4]
			},
			["themes"] = {
				["Default"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Plater Nameplates Theme"] = {
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
