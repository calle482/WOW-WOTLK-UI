
Grid2DB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
		["Grid2Layout"] = {
			["global"] = {
				["customLayouts"] = {
					["Holypalaswe-5man"] = {
						{
							["maxColumns"] = 1,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
							["groupFilter"] = "1",
							["unitsPerColumn"] = 5,
						}, -- [1]
						{
							["maxColumns"] = 3,
							["type"] = "pet",
							["unitsPerColumn"] = 4,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [2]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
					},
					["holypalaswe-10man"] = {
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "1",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupBy"] = "ASSIGNEDROLE",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "2",
							["unitsPerColumn"] = 5,
						}, -- [2]
						{
							["maxColumns"] = 3,
							["type"] = "pet",
							["unitsPerColumn"] = 4,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [3]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
					},
					["Holypalaswe"] = {
						{
							["maxColumns"] = 1,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "1",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [1]
						{
							["maxColumns"] = 1,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
							["groupFilter"] = "2",
							["unitsPerColumn"] = 5,
						}, -- [2]
						{
							["maxColumns"] = 1,
							["groupBy"] = "ASSIGNEDROLE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "3",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
						}, -- [3]
						{
							["maxColumns"] = 1,
							["unitsPerColumn"] = 5,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "4",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [4]
						{
							["maxColumns"] = 1,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
							["groupFilter"] = "5",
							["unitsPerColumn"] = 5,
						}, -- [5]
						{
							["maxColumns"] = 1,
							["groupBy"] = "ASSIGNEDROLE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "6",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
						}, -- [6]
						{
							["maxColumns"] = 1,
							["unitsPerColumn"] = 5,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "7",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [7]
						{
							["maxColumns"] = 1,
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupBy"] = "ASSIGNEDROLE",
							["groupFilter"] = "8",
							["unitsPerColumn"] = 5,
						}, -- [8]
						{
							["maxColumns"] = 3,
							["type"] = "pet",
							["unitsPerColumn"] = 4,
						}, -- [9]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
					},
					["holypalaswe-25man"] = {
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupBy"] = "ASSIGNEDROLE",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "1",
							["unitsPerColumn"] = 5,
						}, -- [1]
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupBy"] = "ASSIGNEDROLE",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "2",
							["unitsPerColumn"] = 5,
						}, -- [2]
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["unitsPerColumn"] = 5,
							["groupBy"] = "ASSIGNEDROLE",
							["groupFilter"] = "3",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
						}, -- [3]
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["unitsPerColumn"] = 5,
							["groupFilter"] = "4",
							["groupBy"] = "ASSIGNEDROLE",
						}, -- [4]
						{
							["maxColumns"] = 1,
							["type"] = "player",
							["groupBy"] = "ASSIGNEDROLE",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["groupFilter"] = "5",
							["unitsPerColumn"] = 5,
						}, -- [5]
						{
							["maxColumns"] = 3,
							["type"] = "pet",
							["groupBy"] = "ASSIGNEDROLE",
							["groupingOrder"] = "TANK,HEALER,DAMAGER,NONE",
							["unitsPerColumn"] = 4,
						}, -- [6]
						["meta"] = {
							["arena"] = true,
							["raid"] = true,
							["solo"] = true,
							["party"] = true,
						},
					},
				},
			},
			["profiles"] = {
				["Holypalaswe1080p"] = {
					["BorderB"] = 0.5019607843137255,
					["layouts"] = {
						["party"] = "Holypalaswe",
						["solo"] = "Holypalaswe",
						[10] = "holypalaswe-10man",
						["raid"] = "Holypalaswe",
						["arena"] = "Holypalaswe",
						[5] = "Holypalaswe-5man",
						[25] = "holypalaswe-25man",
					},
					["BackgroundR"] = 0.1019607931375504,
					["ScaleSize"] = 0.8,
					["FrameLock"] = true,
					["BorderA"] = 0,
					["BorderR"] = 0.5019607843137255,
					["PosX"] = 8.680555765749887e-05,
					["anchor"] = "BOTTOM",
					["Positions"] = {
						["Holypalaswe"] = {
							"BOTTOM", -- [1]
							0.05333333611488342, -- [2]
							71.11111261815192, -- [3]
						},
						["Holypalaswe7"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							455.8223634680144, -- [3]
						},
						["Holypalaswe8"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							516.266809376084, -- [3]
						},
						["Holypalaswe2"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							153.6000254207193, -- [3]
						},
						["Holypalaswe9"] = {
							"BOTTOMLEFT", -- [1]
							859.7333541512489, -- [2]
							68.9777716516073, -- [3]
						},
						["Holypalaswe10001"] = {
							"BOTTOM", -- [1]
							202.7379226609105, -- [2]
							416.7112514098517, -- [3]
						},
						["Holypalaswe3"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							214.0444930301783, -- [3]
						},
						["holypalaswe-25man6"] = {
							"BOTTOMLEFT", -- [1]
							859.7333541512489, -- [2]
							68.9777716516073, -- [3]
						},
						["Holypalaswe6"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							395.3779175599448, -- [3]
						},
						["Holypalaswe10003"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							477.1555671095848, -- [3]
						},
						["Holypalaswe5"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							334.9334065477069, -- [3]
						},
						["Holypalaswe-5man"] = {
							"BOTTOM", -- [1]
							0, -- [2]
							71.11111261815192, -- [3]
						},
						["Holypalaswe10"] = {
							"BOTTOM", -- [1]
							-254.1511509023781, -- [2]
							73.24461440378172, -- [3]
						},
						["Holypalaswe-5man10002"] = {
							"BOTTOM", -- [1]
							-204.7290142889847, -- [2]
							166.4000474320528, -- [3]
						},
						["Holypalaswe4"] = {
							"BOTTOM", -- [1]
							0.07111545311090595, -- [2]
							274.4889389382479, -- [3]
						},
						["holypalaswe-10man"] = {
							"BOTTOM", -- [1]
							0.05333333611488342, -- [2]
							71.11111261815192, -- [3]
						},
						["Holypalaswe-5man10001"] = {
							"BOTTOM", -- [1]
							-364.7294901685064, -- [2]
							146.4891745540899, -- [3]
						},
						["By Group w/Pets2"] = {
							"BOTTOMLEFT", -- [1]
							571.4665662626358, -- [2]
							349.5111835930111, -- [3]
						},
						["Holypalaswe10002"] = {
							"BOTTOM", -- [1]
							-135.0400531831065, -- [2]
							477.1555671095848, -- [3]
						},
						["holypalaswe-25man"] = {
							"BOTTOM", -- [1]
							0.05333333611488342, -- [2]
							71.11111261815192, -- [3]
						},
						["By Group w/Pets"] = {
							"BOTTOM", -- [1]
							8.680555765749887e-05, -- [2]
							60.44444048272226, -- [3]
						},
						["Holypalaswe-5man2"] = {
							"BOTTOMLEFT", -- [1]
							859.7333541512489, -- [2]
							68.9777716516073, -- [3]
						},
						["holypalaswe-10man3"] = {
							"BOTTOMLEFT", -- [1]
							859.7333541512489, -- [2]
							68.9777716516073, -- [3]
						},
						["Holypalaswe-5man10003"] = {
							"BOTTOM", -- [1]
							1.493728334780826, -- [2]
							233.2447105089887, -- [3]
						},
					},
					["detachedHeaders"] = "pet",
					["BackgroundG"] = 0.1019607931375504,
					["groupAnchor"] = "BOTTOMLEFT",
					["PosY"] = 60.44444048272226,
					["anchors"] = {
						["pet"] = "BOTTOMLEFT",
					},
					["unitsPerColumns"] = {
						["pet"] = 4,
						["player"] = 4,
					},
					["BackgroundA"] = 0,
					["Spacing"] = 9,
					["BorderG"] = 0.5019607843137255,
					["minimapIcon"] = {
						["minimapPos"] = 193.4587189570362,
						["hide"] = true,
					},
					["Padding"] = -1,
					["BackgroundB"] = 0.1019607931375504,
					["groupHorizontals"] = {
						["pet"] = false,
					},
				},
			},
		},
		["Grid2AoeHeals"] = {
		},
		["Grid2Options"] = {
			["profiles"] = {
				["Holypalaswe1080p"] = {
					["L"] = {
						["indicators"] = {
							["icons-left"] = "icons-top",
							["text-bottomright-DURATION"] = "text-bottomright",
							["icon-topleft"] = "icon-topright",
							["icon-top"] = "icon-left",
							["square-topright-2"] = "square-topright",
						},
					},
				},
			},
		},
		["Grid2Frame"] = {
			["profiles"] = {
				["Holypalaswe1080p"] = {
					["frameColor"] = {
						["a"] = 0,
					},
					["fontSize"] = 15,
					["frameHeaderHeights"] = {
						["pet"] = 0.755,
					},
					["frameBorder"] = 1,
					["frameBorderDistance"] = 0,
					["frameHeight"] = 54,
					["barTexture"] = "Flat",
					["frameBorderColor"] = {
						["a"] = 1,
					},
					["font"] = "Friz Quadrata TT",
					["frameHeaderWidths"] = {
						["pet"] = 0.926,
					},
					["frameContentColor"] = {
						["b"] = 0.321568638086319,
						["g"] = 0.321568638086319,
						["r"] = 0.321568638086319,
					},
					["frameTexture"] = "Clean",
					["frameWidth"] = 100,
					["orientation"] = "HORIZONTAL",
				},
			},
		},
		["Grid2RaidDebuffs"] = {
			["profiles"] = {
				["Holypalaswe1080p"] = {
					["defaultEJ_difficulty"] = 16,
					["lastSelectedModule"] = "Wrath of the Lich King",
					["debuffs"] = {
						[100548] = {
							["-"] = {
								37284, -- [1]
							},
						},
						[100564] = {
							["Trash"] = {
								41272, -- [1]
								13005, -- [2]
								3609, -- [3]
								["order"] = 10,
							},
						},
						[100580] = {
							["Felmyst"] = {
								45866, -- [1]
								["order"] = 3,
							},
						},
						[100533] = {
							["Trash"] = {
								27825, -- [1]
								28882, -- [2]
								["order"] = 12,
							},
						},
					},
					["enabledModules"] = {
						["Wrath of the Lich King"] = true,
						["Classic"] = true,
						["The Burning Crusade"] = true,
					},
					["lastSelectedInstance"] = 100631,
				},
			},
		},
	},
	["profileKeys"] = {
		["Doktormabuse - Golemagg"] = "Doktormabuse - Golemagg",
		["Mjölkmannen - Golemagg"] = "Mjölkmannen - Golemagg",
		["Kryptok - Golemagg"] = "Kryptok - Golemagg",
		["Kryptik - Golemagg"] = "Kryptik - Golemagg",
		["Krypadin - Golemagg"] = "Holypalaswe1080p",
	},
	["profiles"] = {
		["Doktormabuse - Golemagg"] = {
			["statuses"] = {
				["buff-SpiritOfRedemption"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["blinkThreshold"] = 3,
					["spellName"] = 27827,
				},
				["debuff-WeakenedSoul"] = {
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.9,
						["g"] = 0.2,
						["r"] = 0,
					},
					["spellName"] = 6788,
				},
				["buff-Renew-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 25315,
				},
				["buff-PowerWordShield"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 0,
					},
					["spellName"] = 10901,
				},
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["background"] = {
					["type"] = "background",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Renew-mine"] = 99,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["corner-top-right"] = {
					["buff-PowerWordShield"] = 99,
					["debuff-WeakenedSoul"] = 89,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 70,
					["target"] = 50,
					["debuff-Magic"] = 80,
					["debuff-Curse"] = 60,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 145,
					["death"] = 155,
				},
			},
		},
		["Krypadin - Golemagg"] = {
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["background"] = {
					["type"] = "background",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Gradient",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["debuff-Forbearance"] = {
					["type"] = "debuff",
					["spellName"] = 25771,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["buff-BlessingOfMight"] = {
					["type"] = "buff",
					["spellName"] = 25291,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingOfWisdom(greater)"] = {
					["type"] = "buff",
					["spellName"] = 25918,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingOfKings"] = {
					["type"] = "buff",
					["spellName"] = 20217,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingOfKings(greater)"] = {
					["type"] = "buff",
					["spellName"] = 25898,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingOfWisdom"] = {
					["type"] = "buff",
					["spellName"] = 25290,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["buff-BlessingOfMight(greater)"] = {
					["type"] = "buff",
					["spellName"] = 25916,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.7,
						["g"] = 1,
						["b"] = 1,
					},
				},
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["border"] = {
					["debuff-Disease"] = 90,
					["health-low"] = 55,
					["debuff-Poison"] = 80,
					["target"] = 50,
					["debuff-Magic"] = 70,
					["debuff-Curse"] = 60,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 145,
					["death"] = 155,
				},
			},
			["themes"] = {
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
		["Mjölkmannen - Golemagg"] = {
			["statuses"] = {
				["buff-Regrowth-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 1,
						["r"] = 0.5,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 8936,
				},
				["buff-Rejuvenation-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.6,
						["g"] = 0,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = true,
					["spellName"] = 774,
				},
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["background"] = {
					["type"] = "background",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statusMap"] = {
				["corner-top-left"] = {
					["buff-Rejuvenation-mine"] = 99,
				},
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["corner-top-right"] = {
					["buff-Regrowth-mine"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["border"] = {
					["debuff-Disease"] = 60,
					["health-low"] = 55,
					["debuff-Poison"] = 80,
					["target"] = 50,
					["debuff-Magic"] = 90,
					["debuff-Curse"] = 70,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 145,
					["death"] = 155,
				},
			},
		},
		["Kryptok - Golemagg"] = {
			["statusMap"] = {
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 145,
					["death"] = 155,
				},
				["border"] = {
					["target"] = 50,
					["health-low"] = 55,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["icon-right"] = {
					["raid-icon-target"] = 90,
				},
				["side-bottom"] = {
					["buff-BattleShout"] = 89,
				},
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["type"] = "border",
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["background"] = {
					["type"] = "background",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["texture"] = "Gradient",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["size"] = 5,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["texture"] = "Gradient",
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statuses"] = {
				["buff-BattleShout"] = {
					["spellName"] = 6673,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 1,
					},
				},
				["buff-ShieldWall"] = {
					["spellName"] = 871,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 1,
					},
				},
				["buff-LastStand"] = {
					["spellName"] = 12975,
					["type"] = "buff",
					["mine"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 1,
					},
				},
			},
		},
		["Kryptik - Golemagg"] = {
			["statuses"] = {
				["buff-IceBarrier-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["mine"] = true,
					["spellName"] = 11426,
				},
				["buff-FrostArmor-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.4,
						["r"] = 0.2,
					},
					["mine"] = true,
					["spellName"] = 168,
				},
				["buff-IceArmor-mine"] = {
					["type"] = "buff",
					["missing"] = true,
					["color1"] = {
						["a"] = 1,
						["b"] = 0.4,
						["g"] = 0.4,
						["r"] = 0.2,
					},
					["mine"] = true,
					["spellName"] = 10220,
				},
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["indicators"] = {
				["corner-top-left"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["corner-bottom-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 5,
					["size"] = 5,
				},
				["text-down"] = {
					["type"] = "text",
					["location"] = {
						["y"] = 4,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 6,
					["textlength"] = 6,
					["fontSize"] = 10,
				},
				["icon-left"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = -2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["background"] = {
					["type"] = "background",
				},
				["icon-center"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 14,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["icon-right"] = {
					["type"] = "icon",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = 2,
					},
					["level"] = 8,
					["fontSize"] = 8,
					["size"] = 12,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 4,
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["heals"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 1,
					["opacity"] = 0.25,
					["texture"] = "Gradient",
				},
				["health"] = {
					["type"] = "bar",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 2,
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["texture"] = "Gradient",
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -8,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 6,
					["fontSize"] = 8,
				},
				["corner-bottom-left"] = {
					["type"] = "square",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["level"] = 5,
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["size"] = 5,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["corner-top-right"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
				["side-bottom"] = {
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "square",
					["level"] = 9,
					["size"] = 5,
				},
			},
			["statusMap"] = {
				["health-color"] = {
					["classcolor"] = 99,
				},
				["text-down"] = {
					["name"] = 99,
				},
				["heals-color"] = {
					["classcolor"] = 99,
				},
				["icon-left"] = {
					["raid-icon-player"] = 155,
				},
				["alpha"] = {
					["offline"] = 97,
					["range"] = 99,
					["death"] = 98,
				},
				["icon-right"] = {
					["raid-icon-target"] = 90,
				},
				["heals"] = {
					["heals-incoming"] = 99,
				},
				["health"] = {
					["health-current"] = 99,
				},
				["text-down-color"] = {
					["classcolor"] = 99,
				},
				["text-up"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["text-up-color"] = {
					["charmed"] = 65,
					["feign-death"] = 96,
					["health-deficit"] = 50,
					["offline"] = 93,
					["death"] = 95,
				},
				["border"] = {
					["target"] = 50,
					["health-low"] = 55,
				},
				["icon-center"] = {
					["ready-check"] = 150,
					["raid-debuffs"] = 145,
					["death"] = 155,
				},
			},
		},
		["Holypalaswe1080p"] = {
			["indicators"] = {
				["text-topright"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 12,
					["duration"] = true,
				},
				["mana-color"] = {
					["type"] = "bar-color",
				},
				["text-down"] = {
					["location"] = {
						["y"] = 6,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["type"] = "text",
					["textlength"] = 11,
					["level"] = 5,
				},
				["absorbs-color"] = {
					["type"] = "bar-color",
				},
				["square-bottomright"] = {
					["borderSize"] = 1,
					["size"] = 12,
					["texture"] = "Flat",
					["location"] = {
						["y"] = -1,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -24,
					},
					["level"] = 6,
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
				},
				["text-bottomright-2-color"] = {
					["type"] = "text-color",
				},
				["text-topright-color"] = {
					["type"] = "text-color",
				},
				["background"] = {
					["type"] = "background",
				},
				["side-top-color"] = {
					["type"] = "text-color",
				},
				["square-topright-2"] = {
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = -24,
					},
					["level"] = 6,
					["texture"] = "Flat",
					["size"] = 12,
				},
				["health-color"] = {
					["type"] = "bar-color",
				},
				["text-bottomright-2-STACKS"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -3,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -22,
					},
					["level"] = 7,
					["textlength"] = 3,
					["stack"] = true,
				},
				["tooltip"] = {
					["type"] = "tooltip",
					["showDefault"] = true,
					["showTooltip"] = 1,
				},
				["text-up"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -15,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 5,
					["textlength"] = 11,
					["load"] = {
						["unitType"] = {
							["player"] = true,
						},
					},
				},
				["text-bottomright-STACKS-color"] = {
					["type"] = "text-color",
				},
				["mana"] = {
					["type"] = "bar",
					["backColor"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["orientation"] = "HORIZONTAL",
					["level"] = 3,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["height"] = 7,
				},
				["border"] = {
					["color1"] = {
						["a"] = 0,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["type"] = "border",
				},
				["bottom-bar-color"] = {
					["type"] = "bar-color",
				},
				["absorbs"] = {
					["type"] = "bar",
					["level"] = 3,
					["orientation"] = "VERTICAL",
					["opacity"] = 1,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["width"] = 5,
				},
				["text-bottomright-DURATION"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -3,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -1,
					},
					["level"] = 7,
					["textlength"] = 3,
					["duration"] = true,
				},
				["icons-bottomleft"] = {
					["fontOffsetX"] = 2,
					["fontSize"] = 13,
					["fontOffsetY"] = -1,
					["iconSpacing"] = 0,
					["reverseCooldown"] = true,
					["maxIcons"] = 4,
					["borderSize"] = 1,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOMLEFT",
						["point"] = "BOTTOMLEFT",
						["x"] = 0,
					},
					["maxIconsPerRow"] = 6,
					["useStatusColor"] = true,
					["level"] = 6,
					["iconSize"] = 14,
					["type"] = "icons",
				},
				["text-up-PET-color"] = {
					["type"] = "text-color",
				},
				["icon-topleft"] = {
					["fontOffsetX"] = 0,
					["fontSize"] = 8,
					["fontOffsetY"] = 0,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPRIGHT",
						["point"] = "TOPRIGHT",
						["x"] = 1,
					},
					["level"] = 8,
					["type"] = "icon",
					["size"] = 16,
				},
				["text-down-color"] = {
					["type"] = "text-color",
				},
				["square-center"] = {
					["type"] = "square",
					["size"] = 15,
					["location"] = {
						["y"] = -4,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 25,
					},
					["level"] = 6,
					["load"] = {
						["playerClass"] = {
							["PALADIN"] = true,
						},
					},
					["texture"] = "Flat",
				},
				["icon-center"] = {
					["fontSize"] = 12,
					["reverseCooldown"] = true,
					["color1"] = {
						["a"] = 0,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["type"] = "icon",
					["location"] = {
						["y"] = 0.1,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["level"] = 8,
					["useStatusColor"] = true,
					["size"] = 22,
				},
				["health"] = {
					["type"] = "bar",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 0,
					},
					["location"] = {
						["y"] = 0,
						["relPoint"] = "CENTER",
						["point"] = "CENTER",
						["x"] = 0,
					},
					["opacity"] = 1,
					["level"] = 2,
					["texture"] = "Clean",
				},
				["square-topleft"] = {
					["type"] = "square",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["borderSize"] = 1,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = -1,
					},
					["level"] = 6,
					["texture"] = "Flat",
					["size"] = 14,
				},
				["text-bottomright-DURATION-color"] = {
					["type"] = "text-color",
				},
				["icon-right"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0,
						["b"] = 0,
					},
					["fontSize"] = 8,
					["type"] = "icon",
					["level"] = 8,
					["location"] = {
						["y"] = 1,
						["relPoint"] = "RIGHT",
						["point"] = "RIGHT",
						["x"] = -1,
					},
					["reverseCooldown"] = true,
					["borderSize"] = 1,
					["size"] = 22,
				},
				["heals-color"] = {
					["type"] = "bar-color",
				},
				["blackborder-color"] = {
					["type"] = "bar-color",
				},
				["alpha"] = {
					["type"] = "alpha",
				},
				["icons-left"] = {
					["maxIcons"] = 3,
					["type"] = "icons",
					["orientation"] = "VERTICAL",
					["reverseCooldown"] = true,
					["iconSize"] = 16,
					["level"] = 6,
					["maxIconsPerRow"] = 1,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "TOPLEFT",
						["point"] = "TOPLEFT",
						["x"] = 16,
					},
				},
				["corner-top-right-color"] = {
					["type"] = "text-color",
				},
				["text-up-PET"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -10,
						["relPoint"] = "TOP",
						["point"] = "TOP",
						["x"] = 0,
					},
					["level"] = 7,
					["textlength"] = 7,
					["load"] = {
						["unitType"] = {
							["pet"] = true,
						},
					},
				},
				["corner-top-left-color"] = {
					["type"] = "text-color",
				},
				["text-bottomright-2-STACKS-color"] = {
					["type"] = "text-color",
				},
				["icon-top"] = {
					["type"] = "icon",
					["level"] = 8,
					["location"] = {
						["y"] = 0,
						["relPoint"] = "LEFT",
						["point"] = "LEFT",
						["x"] = 1,
					},
					["reverseCooldown"] = true,
					["fontSize"] = 8,
					["size"] = 16,
				},
				["text-up-color"] = {
					["type"] = "text-color",
				},
				["text-bottomright-2"] = {
					["type"] = "text",
					["location"] = {
						["y"] = -3,
						["relPoint"] = "BOTTOMRIGHT",
						["point"] = "BOTTOMRIGHT",
						["x"] = -22,
					},
					["level"] = 7,
					["textlength"] = 3,
					["duration"] = true,
				},
				["heals"] = {
					["type"] = "bar",
					["opacity"] = 0.4,
					["anchorTo"] = "health",
					["location"] = {
						["y"] = 0,
						["relPoint"] = "BOTTOM",
						["point"] = "BOTTOM",
						["x"] = 0,
					},
					["level"] = 3,
					["orientation"] = "HORIZONTAL",
					["height"] = 4,
				},
			},
			["statuses"] = {
				["debuff-special-MortalWound"] = {
					["enableStacks"] = 5,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["r"] = 0.9803921568627451,
					},
					["spellName"] = 54378,
				},
				["debuffs-health-color-red"] = {
					["auras"] = {
						"Anti-Magic Prison", -- [1]
						"Aura of Suffering", -- [2]
						"Banish", -- [3]
						"Chains of Shadow", -- [4]
						"Corruption: Absolute", -- [5]
						"Curse of Caramain", -- [6]
						"Cyclone", -- [7]
						"Darkness", -- [8]
						"Desolation", -- [9]
						"Embrace of the Vampyr", -- [10]
						"Engulfing Darkness", -- [11]
						"Gluttonous Miasma", -- [12]
						"Ice Tomb", -- [13]
						"Icebolt", -- [14]
						"Mortality", -- [15]
						"Necrotic Aura", -- [16]
						"Possession", -- [17]
						"Withering Winds", -- [18]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["unit-index"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["health-deficit"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["role"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["target"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["raid-debuffs"] = {
					["debuffs"] = {
						[100534] = {
							31347, -- [1]
							31344, -- [2]
							31341, -- [3]
							31944, -- [4]
							31972, -- [5]
							31306, -- [6]
							31298, -- [7]
							31249, -- [8]
						},
						[100631] = {
							70107, -- [1]
							71665, -- [2]
							70126, -- [3]
							70157, -- [4]
							70980, -- [5]
							70450, -- [6]
							71089, -- [7]
							69483, -- [8]
							71163, -- [9]
							71127, -- [10]
							70435, -- [11]
							70671, -- [12]
							70432, -- [13]
							71257, -- [14]
							70873, -- [15]
							70744, -- [16]
							70751, -- [17]
							70633, -- [18]
							71941, -- [19]
							70766, -- [20]
							69248, -- [21]
							72219, -- [22]
							69278, -- [23]
							71001, -- [24]
							71289, -- [25]
							71204, -- [26]
							69917, -- [27]
							71237, -- [28]
							71951, -- [29]
							69674, -- [30]
							69802, -- [31]
							69508, -- [32]
							30494, -- [33]
							72133, -- [34]
							68981, -- [35]
							69242, -- [36]
							69409, -- [37]
							70541, -- [38]
							27177, -- [39]
							72705, -- [40]
							69065, -- [41]
							69075, -- [42]
							69651, -- [43]
							70838, -- [44]
							71623, -- [45]
							72151, -- [46]
							71340, -- [47]
							72985, -- [48]
							70923, -- [49]
							70215, -- [50]
							72297, -- [51]
							72454, -- [52]
							70341, -- [53]
							70342, -- [54]
							70911, -- [55]
							69774, -- [56]
							72293, -- [57]
							72385, -- [58]
						},
						[100509] = {
							96, -- [1]
							25471, -- [2]
							25646, -- [3]
							25656, -- [4]
							25725, -- [5]
							25176, -- [6]
							25189, -- [7]
							25183, -- [8]
							25685, -- [9]
						},
						[100724] = {
							74367, -- [1]
							74502, -- [2]
							74562, -- [3]
							74567, -- [4]
							74792, -- [5]
							74795, -- [6]
							74452, -- [7]
						},
						[100624] = {
							66690, -- [1]
							72004, -- [2]
						},
						[102222] = {
							338853, -- [1]
							338851, -- [2]
							327255, -- [3]
							339278, -- [4]
						},
						[100550] = {
							35410, -- [1]
							35383, -- [2]
							37027, -- [3]
							36798, -- [4]
							35318, -- [5]
							37120, -- [6]
							37118, -- [7]
							42783, -- [8]
						},
						[100533] = {
							28796, -- [1]
							28794, -- [2]
							28622, -- [3]
							28169, -- [4]
							55550, -- [5]
							29212, -- [6]
							28410, -- [7]
							27808, -- [8]
							28786, -- [9]
							28542, -- [10]
							29998, -- [11]
							28882, -- [12]
						},
						[100616] = {
							56272, -- [1]
							57407, -- [2]
						},
						[100649] = {
							65812, -- [1]
							66819, -- [2]
							66821, -- [3]
							66823, -- [4]
							66869, -- [5]
							66331, -- [6]
							66406, -- [7]
							66770, -- [8]
							66689, -- [9]
							66069, -- [10]
							67574, -- [11]
							66012, -- [12]
							66532, -- [13]
							66237, -- [14]
							66242, -- [15]
							66197, -- [16]
							66283, -- [17]
							66209, -- [18]
							66211, -- [19]
							66333, -- [20]
						},
						[1188] = {
							322746, -- [1]
							323569, -- [2]
							325725, -- [3]
							327649, -- [4]
							334913, -- [5]
							320147, -- [6]
							320008, -- [7]
							320144, -- [8]
							333250, -- [9]
							333711, -- [10]
							331847, -- [11]
							331379, -- [12]
							331008, -- [13]
							1604, -- [14]
							328987, -- [15]
							332707, -- [16]
							332332, -- [17]
							332605, -- [18]
							332678, -- [19]
							334493, -- [20]
							334535, -- [21]
							321948, -- [22]
							320232, -- [23]
						},
						[1182] = {
							320596, -- [1]
							320717, -- [2]
							320573, -- [3]
							324293, -- [4]
							324381, -- [5]
							321807, -- [6]
							328664, -- [7]
							327396, -- [8]
							338357, -- [9]
							338353, -- [10]
							334748, -- [11]
							338606, -- [12]
							333485, -- [13]
							321821, -- [14]
							345625, -- [15]
							334610, -- [16]
							333477, -- [17]
							323471, -- [18]
							320784, -- [19]
							320788, -- [20]
							322274, -- [21]
							320170, -- [22]
							333633, -- [23]
							320200, -- [24]
							322548, -- [25]
							320366, -- [26]
						},
						[1183] = {
							325552, -- [1]
							331818, -- [2]
							333406, -- [3]
							329110, -- [4]
							322358, -- [5]
							322232, -- [6]
							327882, -- [7]
							320072, -- [8]
							319120, -- [9]
							334926, -- [10]
							319070, -- [11]
							328180, -- [12]
							328986, -- [13]
							320512, -- [14]
							328409, -- [15]
							328501, -- [16]
							319898, -- [17]
							320542, -- [18]
							328395, -- [19]
							324652, -- [20]
							326242, -- [21]
						},
						[1184] = {
							321828, -- [1]
							322648, -- [2]
							322486, -- [3]
							322939, -- [4]
							323043, -- [5]
							322487, -- [6]
							322968, -- [7]
							322557, -- [8]
							321968, -- [9]
							325027, -- [10]
							331721, -- [11]
							325021, -- [12]
							340208, -- [13]
							340160, -- [14]
							325418, -- [15]
							326092, -- [16]
							323250, -- [17]
						},
						[1185] = {
							323437, -- [1]
							335338, -- [2]
							323001, -- [3]
							322977, -- [4]
							325876, -- [5]
							344993, -- [6]
							326632, -- [7]
							326638, -- [8]
							326617, -- [9]
							325700, -- [10]
							325701, -- [11]
							326891, -- [12]
							326874, -- [13]
							323650, -- [14]
							319703, -- [15]
							319603, -- [16]
							344874, -- [17]
						},
						[100568] = {
							43299, -- [1]
							44955, -- [2]
							43657, -- [3]
							43622, -- [4]
							43613, -- [5]
							43501, -- [6]
							43303, -- [7]
							43093, -- [8]
							43095, -- [9]
							43150, -- [10]
						},
						[1187] = {
							323406, -- [1]
							318913, -- [2]
							323130, -- [3]
							320248, -- [4]
							320180, -- [5]
							333231, -- [6]
							320069, -- [7]
							326892, -- [8]
							331606, -- [9]
							320287, -- [10]
							319626, -- [11]
							319521, -- [12]
							319539, -- [13]
							319531, -- [14]
							330810, -- [15]
							333708, -- [16]
							330784, -- [17]
							330868, -- [18]
							342675, -- [19]
							333299, -- [20]
							341949, -- [21]
							330700, -- [22]
							332836, -- [23]
							330592, -- [24]
							332708, -- [25]
							331288, -- [26]
							330562, -- [27]
							330532, -- [28]
							333845, -- [29]
							320679, -- [30]
							333861, -- [31]
							330725, -- [32]
							341291, -- [33]
							324449, -- [34]
							323825, -- [35]
						},
						[100603] = {
							63276, -- [1]
							63322, -- [2]
							64771, -- [3]
							63024, -- [4]
							63018, -- [5]
							62589, -- [6]
							62861, -- [7]
							61888, -- [8]
							62269, -- [9]
							61903, -- [10]
							61912, -- [11]
							62310, -- [12]
							63612, -- [13]
							63615, -- [14]
							62283, -- [15]
							63169, -- [16]
							63147, -- [17]
							63134, -- [18]
							63830, -- [19]
							63042, -- [20]
							64152, -- [21]
							64153, -- [22]
							64125, -- [23]
							64156, -- [24]
							64157, -- [25]
							62042, -- [26]
							62526, -- [27]
							64290, -- [28]
							63355, -- [29]
							62055, -- [30]
							62548, -- [31]
							62717, -- [32]
							64412, -- [33]
							63666, -- [34]
							62997, -- [35]
							64668, -- [36]
							62469, -- [37]
							61969, -- [38]
						},
						[1189] = {
							323845, -- [1]
							322796, -- [2]
							322554, -- [3]
							321038, -- [4]
							322429, -- [5]
							326827, -- [6]
							322212, -- [7]
							326790, -- [8]
							327814, -- [9]
							328593, -- [10]
							325885, -- [11]
						},
						[100531] = {
							26180, -- [1]
							26050, -- [2]
							26615, -- [3]
							785, -- [4]
							26034, -- [5]
							26036, -- [6]
							25937, -- [7]
							25646, -- [8]
							26580, -- [9]
						},
						[100580] = {
							46561, -- [1]
							46562, -- [2]
							46266, -- [3]
							46557, -- [4]
							46560, -- [5]
							46543, -- [6]
							46427, -- [7]
							46394, -- [8]
							45185, -- [9]
							45230, -- [10]
							45256, -- [11]
							45333, -- [12]
							46771, -- [13]
							45442, -- [14]
							45641, -- [15]
							45885, -- [16]
							45032, -- [17]
							45855, -- [18]
							45662, -- [19]
							45402, -- [20]
							45717, -- [21]
							45866, -- [22]
						},
						[469] = {
							22687, -- [1]
							22667, -- [2]
							23023, -- [3]
							23340, -- [4]
							18173, -- [5]
							23155, -- [6]
							23169, -- [7]
							23153, -- [8]
							23154, -- [9]
							23170, -- [10]
							23128, -- [11]
							23537, -- [12]
							24573, -- [13]
						},
						[1186] = {
							324662, -- [1]
							327481, -- [2]
							328331, -- [3]
							328453, -- [4]
							328434, -- [5]
							323739, -- [6]
							317963, -- [7]
							317661, -- [8]
							27638, -- [9]
							327648, -- [10]
							323195, -- [11]
							323792, -- [12]
							338729, -- [13]
							324154, -- [14]
							324205, -- [15]
							322818, -- [16]
							322817, -- [17]
						},
						[100615] = {
							58936, -- [1]
							57491, -- [2]
						},
						[100409] = {
							19779, -- [1]
							19780, -- [2]
							19776, -- [3]
							20294, -- [4]
							19451, -- [5]
							19714, -- [6]
							20475, -- [7]
							20604, -- [8]
							20277, -- [9]
							20553, -- [10]
							15732, -- [11]
						},
						[100309] = {
							24314, -- [1]
							24318, -- [2]
							16856, -- [3]
							24664, -- [4]
							8269, -- [5]
							24210, -- [6]
							24212, -- [7]
							24306, -- [8]
							17172, -- [9]
							24261, -- [10]
							24111, -- [11]
							24300, -- [12]
							24109, -- [13]
							23952, -- [14]
							23895, -- [15]
							23860, -- [16]
							23865, -- [17]
							21060, -- [18]
							12540, -- [19]
							24327, -- [20]
							24328, -- [21]
						},
						[100249] = {
							18431, -- [1]
						},
						[100564] = {
							40253, -- [1]
							39837, -- [2]
							40239, -- [3]
							40251, -- [4]
							40604, -- [5]
							40481, -- [6]
							40508, -- [7]
							42005, -- [8]
							41179, -- [9]
							41978, -- [10]
							42023, -- [11]
							41914, -- [12]
							41917, -- [13]
							40585, -- [14]
							41032, -- [15]
							40932, -- [16]
							40860, -- [17]
							41001, -- [18]
							34654, -- [19]
							39674, -- [20]
							41150, -- [21]
							41168, -- [22]
							41485, -- [23]
							41472, -- [24]
							41303, -- [25]
							41410, -- [26]
							41376, -- [27]
							41272, -- [28]
							13005, -- [29]
							3609, -- [30]
						},
						[100532] = {
							30115, -- [1]
							30053, -- [2]
							31046, -- [3]
							31069, -- [4]
							31041, -- [5]
							29538, -- [6]
							30753, -- [7]
							37098, -- [8]
							30130, -- [9]
							30129, -- [10]
							25653, -- [11]
							30210, -- [12]
							29833, -- [13]
							29522, -- [14]
							29511, -- [15]
							30115, -- [16]
							37014, -- [17]
							30522, -- [18]
							29991, -- [19]
							29946, -- [20]
							29954, -- [21]
							29951, -- [22]
							29425, -- [23]
							37066, -- [24]
							34694, -- [25]
							30843, -- [26]
							30822, -- [27]
							30890, -- [28]
							30889, -- [29]
						},
						[100548] = {
							38234, -- [1]
							39261, -- [2]
							38358, -- [3]
							37676, -- [4]
							37640, -- [5]
							37749, -- [6]
							39042, -- [7]
							39044, -- [8]
							38049, -- [9]
							38235, -- [10]
							38246, -- [11]
							38280, -- [12]
							37284, -- [13]
						},
					},
					["color1"] = {
						["b"] = 0,
						["g"] = 0.3921568989753723,
						["r"] = 0.3921568989753723,
					},
				},
				["debuff-special-MarkofZeliek"] = {
					["spellName"] = 28835,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["enableStacks"] = 3,
				},
				["threat"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-WeakenedSoul"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2352941334247589,
						["g"] = 0.2352941334247589,
						["r"] = 0.3921568989753723,
					},
					["type"] = "debuff",
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
						},
					},
					["spellName"] = 6788,
				},
				["buff-WildGrowth-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["playerClass"] = {
							["DRUID"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 48438,
				},
				["buff-SacredShield-not-mine"] = {
					["type"] = "buff",
					["spellName"] = 53601,
					["mine"] = 2,
					["useSpellId"] = true,
					["load"] = {
						["playerClass"] = {
							["PALADIN"] = true,
						},
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5882352941176471,
						["g"] = 0.392156862745098,
						["b"] = 1,
					},
				},
				["debuff-special-MarkofKorth'azz"] = {
					["spellName"] = 28832,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["enableStacks"] = 3,
				},
				["buff-Rejuvenation-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2352941334247589,
						["g"] = 0.3921568989753723,
						["r"] = 0.2352941334247589,
					},
					["load"] = {
						["playerClass"] = {
							["DRUID"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 774,
				},
				["debuffs-health-color-yellow"] = {
					["auras"] = {
						"Azure Bindings", -- [1]
						"Bile Vomit", -- [2]
						"Blind", -- [3]
						"Blizzard", -- [4]
						"Blood Plague", -- [5]
						"Chill", -- [6]
						"Choking Cloud", -- [7]
						"Combobulating Spray", -- [8]
						"Constricting Chains", -- [9]
						"Corrupting Blight", -- [10]
						"Crystal Bark", -- [11]
						"Crystal Freeze", -- [12]
						"Dart", -- [13]
						"Death Plague", -- [14]
						"Death's Respite", -- [15]
						"Deep Freeze", -- [16]
						"Drain Life", -- [17]
						"Fear", -- [18]
						"Feral Pounce", -- [19]
						"Flesh Rot", -- [20]
						"Freezing Breath", -- [21]
						"Freezing Trap Effect", -- [22]
						"Fuse Lightning", -- [23]
						"Grievous Bite", -- [24]
						"Guardian Swarm", -- [25]
						"Hammer of Justice", -- [26]
						"Howl of Terror", -- [27]
						"Hurricane", -- [28]
						"Impale", -- [29]
						"Incite Terror", -- [30]
						"Intimidating Shout", -- [31]
						"Knockdown", -- [32]
						"Mind Flay", -- [33]
						"Optic Link", -- [34]
						"Poison Charge", -- [35]
						"Polymorph", -- [36]
						"Polymorph: Spider", -- [37]
						"Psychic Horror", -- [38]
						"Psychic Scream", -- [39]
						"Pyroblast", -- [40]
						"Rend", -- [41]
						"Repentance", -- [42]
						"Rock Shards", -- [43]
						"Rock Shower", -- [44]
						"Runed Flame Jets", -- [45]
						"Seeping Feral Essence", -- [46]
						"Silence", -- [47]
						"Slime Burst", -- [48]
						"Spell Lock", -- [49]
						"Strangulate", -- [50]
						"Touch of Darkness", -- [51]
						"Touch of Light", -- [52]
						"Unquenchable Flames", -- [53]
						"Unstable Energy", -- [54]
						"Virulent Poison", -- [55]
						"Volatile Ooze Adhesive", -- [56]
						"Whirling Slash", -- [57]
						"Whirling Trip", -- [58]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.3921568989753723,
						["r"] = 0.3921568989753723,
					},
				},
				["debuffs-health-color-teal"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.4117647058823529,
						["b"] = 0.4117647058823529,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
						"Arcane Overload", -- [1]
					},
				},
				["debuffs-icon-center"] = {
					["auras"] = {
						"Banish", -- [1]
						"Blind", -- [2]
						"Blizzard", -- [3]
						"Chains of Shadow", -- [4]
						"Constricting Chains", -- [5]
						"Corrupting Blight", -- [6]
						"Crystal Bark", -- [7]
						"Cyclone", -- [8]
						"Fear", -- [9]
						"Feral Pounce", -- [10]
						"Freezing Breath", -- [11]
						"Fuse Lightning", -- [12]
						"Grievous Bite", -- [13]
						"Guardian Swarm", -- [14]
						"Hammer of Justice", -- [15]
						"Hurricane", -- [16]
						"Ice Tomb", -- [17]
						"Intimidating Shout", -- [18]
						"Knockdown", -- [19]
						"Marked For Death", -- [20]
						"Psychic Horror", -- [21]
						"Pyroblast", -- [22]
						"Rune of Blood", -- [23]
						"Runed Flame Jets", -- [24]
						"Seeping Feral Essence", -- [25]
						"Shadowfury", -- [26]
						"Silence", -- [27]
						"Spell Lock", -- [28]
						"Strangulate", -- [29]
						"Touch of Darkness", -- [30]
						"Touch of Light", -- [31]
						"Unquenchable Flames", -- [32]
						"Unstable Energy", -- [33]
						"Void Shift", -- [34]
						"Volatile Ooze Adhesive", -- [35]
						"Whirling Slash", -- [36]
						"Whirling Trip", -- [37]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["range"] = {
					["ranges"] = {
						["PALADIN"] = {
							["friendlySpellID"] = 53563,
							["range"] = "spell",
							["hostileSpellID"] = 48825,
						},
					},
					["elapsed"] = 0.1,
					["default"] = 0.4,
					["color1"] = {
						["a"] = 0,
						["g"] = 1,
						["r"] = 0.2000000178813934,
					},
				},
				["debuff-Disease"] = {
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
							["PALADIN"] = true,
							["SHAMAN"] = true,
						},
					},
				},
				["poweralt"] = {
					["load"] = {
						["disabled"] = true,
					},
					["color1"] = {
						["b"] = 0.501960813999176,
					},
				},
				["debuff-special-MarkofBlaumeux"] = {
					["spellName"] = 28833,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["enableStacks"] = 3,
				},
				["health-current"] = {
					["deadAsFullHealth"] = true,
					["quickHealth"] = true,
				},
				["buff-BeaconofLight-not-mine"] = {
					["type"] = "buff",
					["spellName"] = 53563,
					["mine"] = 2,
					["useSpellId"] = true,
					["load"] = {
						["playerClass"] = {
							["PALADIN"] = true,
						},
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 0.5882352941176471,
						["g"] = 0.392156862745098,
						["b"] = 1,
					},
				},
				["self"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["charmed"] = {
					["color1"] = {
						["g"] = 0.1019607843137255,
						["b"] = 0.1019607843137255,
					},
				},
				["debuff-special-WoundPoison"] = {
					["enableStacks"] = 4,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["r"] = 0.9803921568627451,
					},
					["spellName"] = 13218,
				},
				["my-heals-incoming"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["color-staticcolor"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2352941334247589,
						["g"] = 0.2352941334247589,
						["r"] = 0.2352941334247589,
					},
					["type"] = "color",
				},
				["buffs-health-color-yellow"] = {
					["type"] = "buffs",
					["auras"] = {
						"Alliance Flag", -- [1]
						"Horde Flag", -- [2]
						"Netherstorm Flag", -- [3]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
				},
				["debuff-Curse"] = {
					["load"] = {
						["playerClass"] = {
							["MAGE"] = true,
							["DRUID"] = true,
							["SHAMAN"] = true,
						},
					},
				},
				["offline"] = {
					["color1"] = {
						["a"] = 0.300000011920929,
					},
				},
				["buff-PowerWord:Shield-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2352941334247589,
						["g"] = 0.3921568989753723,
						["r"] = 0.2352941334247589,
					},
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 17,
				},
				["health-low"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["direction"] = {
					["updateRate"] = 2,
					["showOnlyStickyUnits"] = true,
					["StickyTarget"] = true,
					["load"] = {
						["instType"] = {
							["none"] = true,
						},
					},
				},
				["buffs-icon-center"] = {
					["type"] = "buffs",
					["auras"] = {
						"Divine Intervention", -- [1]
						"Flee", -- [2]
						"Spirit of Redemption", -- [3]
						"Vengeance of the Blue Flight", -- [4]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["debuffs-icons-bottomleft-ignored"] = {
					["type"] = "debuffs",
					["auras"] = {
						"Acid Volley", -- [1]
						"Adored", -- [2]
						"Arcane Blast", -- [3]
						"Arcane Buffet", -- [4]
						"Arcane Overload", -- [5]
						"Aura of Despair", -- [6]
						"Aura of Dread", -- [7]
						"Barbed Arrow", -- [8]
						"Black Heat", -- [9]
						"Bloodthistle Withdrawal", -- [10]
						"Burden of Sin", -- [11]
						"Challenger's Burden", -- [12]
						"Chill of the Throne", -- [13]
						"Chilled to the Bone", -- [14]
						"Consumptive Infusion", -- [15]
						"Corrupt Devotion Aura", -- [16]
						"Craven", -- [17]
						"Crimson Chorus", -- [18]
						"Crumbling Foundation", -- [19]
						"Dark Essence", -- [20]
						"Dark Flame", -- [21]
						"Dark Touched", -- [22]
						"Deathbloom", -- [23]
						"Demonic Gateway", -- [24]
						"Depleted Shell", -- [25]
						"Deserter", -- [26]
						"Doom Winds", -- [27]
						"Dormant Valor", -- [28]
						"Earthquake", -- [29]
						"Evil Twin", -- [30]
						"Exhaustion", -- [31]
						"Fancy Footwork", -- [32]
						"Fatigued", -- [33]
						"Fel Ache", -- [34]
						"Felflame Campfire", -- [35]
						"Flame Touched", -- [36]
						"Frost Aura", -- [37]
						"Gas Variable", -- [38]
						"Green Blight Residue", -- [39]
						"Harvest Soul", -- [40]
						"Heartbroken", -- [41]
						"Leeching Swarm", -- [42]
						"Light Essence", -- [43]
						"Light of the Martyr", -- [44]
						"Lingering Flames", -- [45]
						"Loose Anima", -- [46]
						"Mark of Blaumeux", -- [47]
						"Mark of Corruption", -- [48]
						"Mark of Hydross", -- [49]
						"Mark of Korth'azz", -- [50]
						"Mark of Rivendare", -- [51]
						"Mark of Solarian", -- [52]
						"Mark of Zeliek", -- [53]
						"Mistletoe", -- [54]
						"Moonfeather Fever", -- [55]
						"Mystic Buffet", -- [56]
						"Negative Charge", -- [57]
						"Noxious Fumes", -- [58]
						"Ooze Variable", -- [59]
						"Oppressive Atmosphere", -- [60]
						"Orange Blight Residue", -- [61]
						"Phase Punch", -- [62]
						"Positive Charge", -- [63]
						"Power of Shadron", -- [64]
						"Power of Tenebron", -- [65]
						"Power of Vesperon", -- [66]
						"Power Spark", -- [67]
						"Powering Up", -- [68]
						"Pulsing Shockwave Aura", -- [69]
						"Radiant Energy", -- [70]
						"Rage", -- [71]
						"Recently Failed", -- [72]
						"Rune of Power", -- [73]
						"Sample Satisfaction", -- [74]
						"Sanity", -- [75]
						"Sated", -- [76]
						"Shadow Crash", -- [77]
						"Shadow Prison", -- [78]
						"Soul Split: Evil!", -- [79]
						"Soul Split: Good", -- [80]
						"Spectral Exhaustion", -- [81]
						"Spectral Realm", -- [82]
						"Temporal Displacement", -- [83]
						"Tinnitus", -- [84]
						"Touch of the Night", -- [85]
						"Transporter Malfunction", -- [86]
						"Tricked or Treated", -- [87]
						"Twilight Torment", -- [88]
						"Twisted Pain", -- [89]
						"Two Left Feet", -- [90]
						"Unstable Accretion", -- [91]
						"Vortex", -- [92]
						"Wave of Blood", -- [93]
						"Weakened Soul", -- [94]
						"Woe", -- [95]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["debuff-Magic"] = {
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
							["PALADIN"] = true,
						},
					},
				},
				["buff-Berserk"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["unitClass"] = {
							["DRUID"] = true,
						},
					},
					["useSpellId"] = true,
					["mine"] = false,
					["spellName"] = 50334,
				},
				["rangealt"] = {
					["default"] = 0.4,
					["elapsed"] = 0.1,
					["ranges"] = {
						["PALADIN"] = {
							["range"] = 38,
						},
					},
					["range"] = "heal",
					["color1"] = {
						["g"] = 1,
						["r"] = 0,
					},
				},
				["voice"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuffs-text-bottomright-2"] = {
					["auras"] = {
						"Aimed Shot", -- [1]
						"Anti-Magic Prison", -- [2]
						"Aura of Suffering", -- [3]
						"Blood Fury", -- [4]
						"Burn", -- [5]
						"Corruption: Absolute", -- [6]
						"Curse of Caramain", -- [7]
						"Darkness", -- [8]
						"Deathblow", -- [9]
						"Desolation", -- [10]
						"Engulfing Darkness", -- [11]
						"Gluttonous Miasma", -- [12]
						"Gravity Bomb", -- [13]
						"Mortal Cleave", -- [14]
						"Mortal Strike", -- [15]
						"Mortal Strikes", -- [16]
						"Mortality", -- [17]
						"Necrotic Poison", -- [18]
						"Possession", -- [19]
						"Shadow Spike", -- [20]
						"Soul Strike", -- [21]
						"Veil of Shadow", -- [22]
						"Withering Winds", -- [23]
						"Wretched Strike", -- [24]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2,
						["g"] = 0.2,
						["r"] = 1,
					},
				},
				["buff-Regrowth-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["playerClass"] = {
							["DRUID"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 8936,
				},
				["master-looter"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-special-AcidVolley"] = {
					["spellName"] = 29325,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["b"] = 0,
					},
					["enableStacks"] = 10,
				},
				["buff-PrayerofMending-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 41635,
				},
				["buffs-health-color-teal"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 0.4117647058823529,
						["b"] = 0.4117647058823529,
					},
					["auras"] = {
						"Divine Guardian", -- [1]
						"Storm Cloud", -- [2]
					},
				},
				["heals-incoming"] = {
					["healTypeFlags"] = 19,
					["includePlayerHeals"] = true,
					["color1"] = {
						["b"] = 0.2235294282436371,
					},
				},
				["debuff-Poison"] = {
					["load"] = {
						["playerClass"] = {
							["DRUID"] = true,
							["PALADIN"] = true,
							["SHAMAN"] = true,
						},
					},
				},
				["debuff-special-DarkTouched"] = {
					["enableStacks"] = 8,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["r"] = 0.9803921568627451,
					},
					["spellName"] = 45347,
				},
				["debuffs-health-color-lightred"] = {
					["auras"] = {
						"Aimed Shot", -- [1]
						"Blood Fury", -- [2]
						"Deathblow", -- [3]
						"Mortal Cleave", -- [4]
						"Mortal Strike", -- [5]
						"Mortal Strikes", -- [6]
						"Necrotic Poison", -- [7]
						"Rune of Blood", -- [8]
						"Shadow Spike", -- [9]
						"Soul Strike", -- [10]
						"Veil of Shadow", -- [11]
						"Wounding Strike", -- [12]
						"Wretched Strike", -- [13]
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["color1"] = {
						["a"] = 1,
						["b"] = 0.3921568989753723,
						["g"] = 0.3921568989753723,
						["r"] = 0.9803922176361084,
					},
				},
				["raid-assistant"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["power"] = {
					["load"] = {
						["playerClass"] = {
							["HUNTER"] = true,
							["WARLOCK"] = true,
							["PALADIN"] = true,
							["MAGE"] = true,
							["DRUID"] = true,
							["SHAMAN"] = true,
							["PRIEST"] = true,
						},
					},
				},
				["buffs-health-color-lightred"] = {
					["type"] = "buffs",
					["auras"] = {
						"Magic Dampening Field", -- [1]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["r"] = 0.9803921568627451,
					},
				},
				["buff-PhaseShift"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0.2352941176470588,
						["g"] = 0.2352941176470588,
						["r"] = 0.2352941176470588,
					},
					["type"] = "buff",
					["mine"] = false,
					["spellName"] = 4511,
				},
				["buff-Revivify:Mine-mine"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["type"] = "buff",
					["mine"] = 1,
					["spellName"] = 57090,
				},
				["debuff-special-BitingCold"] = {
					["spellName"] = 62039,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 0.392156862745098,
						["g"] = 0.392156862745098,
						["b"] = 0,
					},
					["enableStacks"] = 4,
				},
				["name"] = {
					["defaultName"] = 1,
					["enableTransliterate"] = true,
					["displayVehicleOwner"] = true,
				},
				["death"] = {
					["color1"] = {
						["b"] = 0,
						["g"] = 0,
						["r"] = 0.5764705882352941,
					},
				},
				["ready-check"] = {
					["threshold"] = 3,
				},
				["buffs-Healer-OS"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["type"] = "buffs",
					["load"] = {
						["unitRole"] = {
							["HEALER"] = true,
						},
					},
					["auras"] = {
						"Elemental Mastery", -- [1]
						"Flurry", -- [2]
						"Maelstrom Weapon", -- [3]
						"Moonkin Form", -- [4]
						"Savage Roar", -- [5]
						"Seal of Command", -- [6]
						"Shadowform", -- [7]
						"Vengeance", -- [8]
					},
				},
				["buff-Riptide-mine"] = {
					["type"] = "buff",
					["spellName"] = 61301,
					["mine"] = 1,
					["load"] = {
						["playerClass"] = {
							["SHAMAN"] = true,
						},
					},
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
				},
				["pvp"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["combat-mine"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["buffs-icon-left"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						"Alliance Flag", -- [1]
						"Horde Flag", -- [2]
						"Magic Dampening Field", -- [3]
						"Netherstorm Flag", -- [4]
						"Phase Shift", -- [5]
						"Storm Cloud", -- [6]
					},
				},
				["combat"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-special-MysticBuffet"] = {
					["enableStacks"] = 4,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.3921568989753723,
						["r"] = 0.3921568989753723,
					},
					["spellName"] = 70127,
				},
				["buff-EarthShield-mine"] = {
					["type"] = "buff",
					["color6"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0,
						["b"] = 0,
					},
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.7058823529411764,
						["b"] = 0,
					},
					["color3"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 0,
					},
					["spellName"] = 974,
					["load"] = {
						["playerClass"] = {
							["SHAMAN"] = true,
						},
					},
					["color4"] = {
						["a"] = 1,
						["r"] = 0.7058823529411764,
						["g"] = 1,
						["b"] = 0,
					},
					["color5"] = {
						["a"] = 1,
						["r"] = 0.392156862745098,
						["g"] = 1,
						["b"] = 0,
					},
					["colorCount"] = 6,
				},
				["afk"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["leader"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-special-ArcaneBuffet"] = {
					["enableStacks"] = 7,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
					["spellName"] = 45018,
				},
				["buff-EarthShield-not-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 0.3215686274509804,
						["r"] = 0.7411764705882353,
					},
					["load"] = {
						["playerClass"] = {
							["SHAMAN"] = true,
						},
					},
					["mine"] = 2,
					["spellName"] = 974,
				},
				["debuff-special-WyvernSting"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
					["useSpellId"] = true,
					["type"] = "debuff",
					["spellName"] = 65877,
				},
				["overhealing"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-special-Strangulate"] = {
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
					["type"] = "debuff",
					["load"] = {
						["unitClass"] = {
							["WARLOCK"] = true,
							["PALADIN"] = true,
							["MAGE"] = true,
							["DRUID"] = true,
							["SHAMAN"] = true,
							["PRIEST"] = true,
						},
						["unitRole"] = {
							["DAMAGER"] = true,
							["HEALER"] = true,
							["NONE"] = true,
						},
					},
					["spellName"] = 47476,
				},
				["mana"] = {
					["displayType"] = false,
					["load"] = {
						["playerClass"] = {
							["HUNTER"] = true,
							["WARLOCK"] = true,
							["PALADIN"] = true,
							["MAGE"] = true,
							["DRUID"] = true,
							["SHAMAN"] = true,
							["PRIEST"] = true,
						},
					},
					["color1"] = {
						["b"] = 0.8509803921568627,
						["g"] = 0.5019607843137255,
						["r"] = 0.3019607843137255,
					},
				},
				["buff-BeaconofLight-mine"] = {
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.5882352941176471,
						["b"] = 0,
					},
					["useSpellId"] = true,
					["spellName"] = 53563,
					["colorThreshold"] = {
						10, -- [1]
					},
					["load"] = {
						["playerClass"] = {
							["PALADIN"] = true,
						},
					},
					["colorCount"] = 2,
				},
				["raid-icon-target"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["debuff-special-ShadowPrison"] = {
					["enableStacks"] = 10,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.3921568989753723,
						["r"] = 0.3921568989753723,
					},
					["spellName"] = 72999,
				},
				["buff-Renew-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 139,
				},
				["raid-icon-player"] = {
					["color6"] = {
						["g"] = 0.7098039388656616,
					},
					["load"] = {
						["disabled"] = true,
					},
				},
				["dungeon-role"] = {
					["hideDamagers"] = true,
					["hideInCombat"] = true,
					["useAlternateIcons"] = true,
				},
				["buff-Lifebloom-mine"] = {
					["type"] = "buff",
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
					["load"] = {
						["playerClass"] = {
							["DRUID"] = true,
						},
					},
					["mine"] = 1,
					["spellName"] = 33763,
				},
				["buff-SacredShield-mine"] = {
					["type"] = "buff",
					["mine"] = 1,
					["color1"] = {
						["a"] = 1,
						["r"] = 0,
						["g"] = 1,
						["b"] = 0,
					},
					["color2"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.5882352941176471,
						["b"] = 0,
					},
					["useSpellId"] = true,
					["spellName"] = 53601,
					["colorThreshold"] = {
						10, -- [1]
					},
					["load"] = {
						["playerClass"] = {
							["PALADIN"] = true,
						},
					},
					["colorCount"] = 2,
				},
				["buffs-health-color-red"] = {
					["type"] = "buffs",
					["auras"] = {
						"Flee", -- [1]
						"Spirit of Redemption", -- [2]
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0,
						["r"] = 1,
					},
				},
				["debuff-Anubarak>PenetratingCold"] = {
					["type"] = "debuff",
					["spellName"] = 66013,
					["color1"] = {
						["a"] = 1,
						["r"] = 0.3921568989753723,
						["g"] = 0.3921568989753723,
						["b"] = 0,
					},
				},
				["debuff-special-MarkofRivendare"] = {
					["spellName"] = 28834,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["enableStacks"] = 3,
				},
				["debuff-special-Sawblades"] = {
					["enableStacks"] = 10,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
					["spellName"] = 65102,
				},
				["buffs-ArmorBuff"] = {
					["auras"] = {
						15363, -- [1]
						16237, -- [2]
					},
					["type"] = "buffs",
					["load"] = {
						["playerClass"] = {
							["PRIEST"] = true,
							["SHAMAN"] = true,
						},
						["unitRole"] = {
							["TANK"] = true,
						},
					},
					["color1"] = {
						["a"] = 1,
						["b"] = 1,
						["g"] = 1,
						["r"] = 1,
					},
				},
				["debuffs-text-bottomright-stacks"] = {
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 0.2,
						["b"] = 0.2,
					},
					["useWhiteList"] = true,
					["type"] = "debuffs",
					["auras"] = {
					},
				},
				["manaalt"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
				["buffs-icons-top"] = {
					["type"] = "buffs",
					["color1"] = {
						["a"] = 1,
						["r"] = 1,
						["g"] = 1,
						["b"] = 1,
					},
					["auras"] = {
						"Aegis of Dalaran", -- [1]
						"Alter Time", -- [2]
						"Anti-Magic Shell", -- [3]
						"Anti-Magic Zone", -- [4]
						"Aspect of the Turtle", -- [5]
						"Astral Shift", -- [6]
						"Aura Mastery", -- [7]
						"Barkskin", -- [8]
						"Blessing of Freedom", -- [9]
						"Blessing of Protection", -- [10]
						"Blessing of Sacrifice", -- [11]
						"Blessing of Spellwarding", -- [12]
						"Blur", -- [13]
						"Bone Barrier", -- [14]
						"Bonestorm", -- [15]
						"Cheating Death", -- [16]
						"Cloak of Shadows", -- [17]
						"Cloaking", -- [18]
						"Dampen Harm", -- [19]
						"Dark Pact", -- [20]
						"Darkness", -- [21]
						"Death's Advance", -- [22]
						"Demon Spikes", -- [23]
						"Desperate Prayer", -- [24]
						"Deterrence", -- [25]
						"Die by the Sword", -- [26]
						"Diffuse Magic", -- [27]
						"Dispersion", -- [28]
						"Divine Protection", -- [29]
						"Divine Sacrifice", -- [30]
						"Divine Shield", -- [31]
						"Enraged Regeneration", -- [32]
						"Evasion", -- [33]
						"Eye for an Eye", -- [34]
						"Feint", -- [35]
						"Fortifying Brew", -- [36]
						"Free Action", -- [37]
						"Frenzied Regeneration", -- [38]
						"Guard", -- [39]
						"Guardian of Ancient Kings", -- [40]
						"Guardian Spirit", -- [41]
						"Hand of Freedom", -- [42]
						"Hand of Protection", -- [43]
						"Hand of Sacrifice", -- [44]
						"Hand of Salvation", -- [45]
						"Harden Skin", -- [46]
						"Heart of Iron", -- [47]
						"Ice Block", -- [48]
						"Icebound Fortitude", -- [49]
						"Ignore Pain", -- [50]
						"Incarnation: Guardian of Ursoc", -- [51]
						"Innervate", -- [52]
						"Intervene", -- [53]
						"Invisibility", -- [54]
						"Ironbark", -- [55]
						"Ironfur", -- [56]
						"Last Stand", -- [57]
						"Lay on Hands", -- [58]
						"Lesser Invisibility", -- [59]
						"Life Cocoon", -- [60]
						"Master's Call", -- [61]
						"Metamorphosis", -- [62]
						"Nether Protection", -- [63]
						"Netherwalk", -- [64]
						"Pain Suppression", -- [65]
						"Recklessness", -- [66]
						"Riposte", -- [67]
						"Royal Seal of King Llane", -- [68]
						"Rune Tap", -- [69]
						"Safeguard", -- [70]
						"Shadow Bulwark", -- [71]
						"Shamanistic Rage", -- [72]
						"Shield Block", -- [73]
						"Shield of the Righteous", -- [74]
						"Shield Wall", -- [75]
						"Spell Reflection", -- [76]
						"Spell Shield", -- [77]
						"Survival Instincts", -- [78]
						"Survival of the Fittest", -- [79]
						"Touch of Karma", -- [80]
						"Tuft of Smoldering Plumage", -- [81]
						"Unbreakable Armor", -- [82]
						"Unending Resolve", -- [83]
						"Vampiric Aura", -- [84]
						"Vampiric Blood", -- [85]
						"Vanish", -- [86]
						"Zen Meditation", -- [87]
					},
				},
				["debuff-special-ChilledtotheBone"] = {
					["enableStacks"] = 5,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.3921568989753723,
						["r"] = 0.3921568989753723,
					},
					["spellName"] = 70106,
				},
				["debuff-special-FlameTouched"] = {
					["enableStacks"] = 4,
					["type"] = "debuff",
					["color1"] = {
						["a"] = 1,
						["b"] = 0,
						["g"] = 0.392156862745098,
						["r"] = 0.392156862745098,
					},
					["spellName"] = 45348,
				},
				["lowmana"] = {
					["load"] = {
						["disabled"] = true,
					},
				},
			},
			["formatting"] = {
				["longDecimalFormat"] = "%.0f",
				["shortDurationStackFormat"] = "%.1f:%d",
			},
			["versions"] = {
				["Grid2"] = 12,
				["Grid2RaidDebuffs"] = 4,
			},
			["statusMap"] = {
				["text-topright"] = {
					["buff-BeaconofLight-mine"] = 50,
				},
				["mana-color"] = {
					["mana"] = 51,
				},
				["blackborder-color"] = {
				},
				["absorbs-color"] = {
				},
				["square-bottomright"] = {
					["buff-SacredShield-not-mine"] = 50,
				},
				["text-bottomright-2-color"] = {
				},
				["text-topright-color"] = {
					["buff-BeaconofLight-mine"] = 50,
				},
				["background"] = {
				},
				["square-topright-2"] = {
					["buff-EarthShield-not-mine"] = 50,
					["debuff-WeakenedSoul"] = 52,
					["buff-BeaconofLight-not-mine"] = 51,
				},
				["heals"] = {
					["heals-incoming"] = 51,
				},
				["text-bottomright-2-STACKS"] = {
					["debuff-special-DarkTouched"] = 54,
					["debuffs-text-bottomright-stacks"] = 58,
					["buff-Revivify:Mine-mine"] = 59,
					["debuff-special-FlameTouched"] = 55,
					["debuff-special-ArcaneBuffet"] = 57,
				},
				["text-up"] = {
					["name"] = 50,
				},
				["icon-topleft"] = {
					["buff-EarthShield-mine"] = 53,
					["buff-PrayerofMending-mine"] = 55,
					["buff-Lifebloom-mine"] = 54,
				},
				["border"] = {
				},
				["absorbs"] = {
				},
				["mana"] = {
					["mana"] = 50,
				},
				["icons-bottomleft"] = {
					["debuff-special-MarkofRivendare"] = 52,
					["debuff-special-MarkofKorth'azz"] = 51,
					["debuff-special-ChilledtotheBone"] = 58,
					["debuff-special-MarkofBlaumeux"] = 54,
					["debuff-special-AcidVolley"] = 55,
					["debuff-special-MysticBuffet"] = 59,
					["debuffs-icons-bottomleft-ignored"] = 56,
					["debuff-special-MarkofZeliek"] = 53,
					["debuff-special-ShadowPrison"] = 57,
				},
				["bottom-bar-color"] = {
				},
				["text-down-color"] = {
				},
				["square-center"] = {
					["range"] = 53,
					["rangealt"] = 50,
				},
				["icon-center"] = {
					["resurrection"] = 168,
					["debuffs-icon-center"] = 157,
					["debuff-special-WyvernSting"] = 171,
					["debuff-Magic"] = 167,
					["debuff-Disease"] = 158,
					["debuff-Poison"] = 159,
					["buff-Revivify:Mine-mine"] = 169,
					["debuff-Curse"] = 160,
					["raid-debuffs"] = 155,
					["debuff-special-Sawblades"] = 170,
					["buffs-icon-center"] = 156,
				},
				["health-color"] = {
					["debuff-special-MortalWound"] = 85,
					["debuffs-health-color-red"] = 100,
					["debuff-special-DarkTouched"] = 84,
					["debuff-special-ArcaneBuffet"] = 86,
					["debuff-special-WoundPoison"] = 87,
					["debuff-special-ChilledtotheBone"] = 94,
					["debuffs-health-color-lightred"] = 82,
					["debuff-special-Strangulate"] = 90,
					["classcolor"] = 102,
					["raid-debuffs"] = 73,
					["buffs-health-color-teal"] = 57,
					["debuff-special-ShadowPrison"] = 93,
					["debuff-special-AcidVolley"] = 89,
					["charmed"] = 75,
					["debuff-WeakenedSoul"] = 96,
					["debuff-special-WyvernSting"] = 83,
					["debuff-special-MysticBuffet"] = 95,
					["buffs-health-color-red"] = 101,
					["buffs-health-color-lightred"] = 81,
					["buff-PhaseShift"] = 99,
					["debuff-special-Sawblades"] = 91,
					["death"] = 78,
					["buff-Rejuvenation-mine"] = 98,
					["buffs-health-color-yellow"] = 79,
					["debuffs-health-color-yellow"] = 80,
					["debuff-Anubarak>PenetratingCold"] = 92,
					["buff-PowerWord:Shield-mine"] = 97,
					["debuffs-health-color-teal"] = 88,
				},
				["square-topleft"] = {
					["banzai-threat"] = 50,
				},
				["heals-color"] = {
					["heals-incoming"] = 51,
				},
				["icon-right"] = {
					["spell-cast"] = 51,
				},
				["text-bottomright-DURATION-color"] = {
					["buff-SacredShield-mine"] = 52,
					["buff-Riptide-mine"] = 51,
				},
				["text-down"] = {
					["charmed"] = 52,
					["offline"] = 53,
					["feign-death"] = 55,
					["death"] = 54,
				},
				["alpha"] = {
					["rangealt"] = 54,
					["death"] = 53,
				},
				["text-up-PET-color"] = {
				},
				["text-bottomright-DURATION"] = {
					["buff-SacredShield-mine"] = 57,
					["buff-Riptide-mine"] = 56,
					["buff-Rejuvenation-mine"] = 59,
					["buff-PowerWord:Shield-mine"] = 58,
				},
				["text-up-PET"] = {
					["name"] = 50,
				},
				["health"] = {
					["health-current"] = 52,
					["buff-PhaseShift"] = 53,
				},
				["text-bottomright-2-STACKS-color"] = {
				},
				["icon-top"] = {
					["buffs-ArmorBuff"] = 59,
					["direction"] = 54,
					["dungeon-role"] = 55,
					["ready-check"] = 56,
					["buff-WildGrowth-mine"] = 58,
					["buffs-icon-left"] = 57,
				},
				["text-up-color"] = {
				},
				["text-bottomright-2"] = {
					["debuffs-text-bottomright-2"] = 58,
					["debuff-special-WoundPoison"] = 59,
					["buff-Regrowth-mine"] = 61,
					["buff-Renew-mine"] = 60,
				},
				["icons-left"] = {
					["buffs-icons-top"] = 55,
					["buff-Berserk"] = 57,
					["buffs-Healer-OS"] = 56,
				},
			},
			["themes"] = {
				["enabled"] = {
					["default"] = 0,
				},
				["indicators"] = {
					[0] = {
					},
				},
			},
		},
	},
}
