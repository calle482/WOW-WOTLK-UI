local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "frFR")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) à %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) à %s"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' -  'on', 'off' ou rien pour activer/désactiver."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' -  'on', 'off', 'default' ou rien pour activer/désactiver."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - 'RRGGBB' ou 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - 'RRGGBBAA' ou 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' - Touche invalide."
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - Les valeurs doivent être comprises entre 0..1 ou 0..255."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - Les valeurs doivent être comprises entre 0-1 ou 0-255."
--[[Translation missing --]]
--[[ L["%s %s"] = ""--]] 
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - 'on', 'off' ou rien pour activer/désactiver."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' -  'on', 'off', 'default' ou rien pour activer/désactiver."
L["%s is added to the award list"] = "%s est ajouté à la liste des gains"
L["%s is already in the award list"] = "%s est déjà dans la liste des gains"
L["%s is dead. Award EP?"] = "%s est mort. Gain d'EP ?"
L["%s is not eligible for EP awards"] = "%s n'est pas éligible pour les gains d'EP"
--[[Translation missing --]]
--[[ L["%s is not in the award list now. Whisper me 'epgp standby' to enlist again."] = ""--]] 
--[[Translation missing --]]
--[[ L["%s is now removed from the award list. Whisper me 'epgp standby' to enlist again."] = ""--]] 
L["%s to %s"] = [=[a
]=]
--[[Translation missing --]]
--[[ L["%s, %s, %s"] = ""--]] 
--[[Translation missing --]]
--[[ L["%s, %s, %s, %s"] = ""--]] 
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) à %s"
L["%s: %+d GP (%s) to %s"] = "%s : %+d GP (%s) à %s"
L["%s: %s to %s"] = [=[a
]=]
--[[Translation missing --]]
--[[ L["/roll if you want this item. DO NOT roll more than one time."] = ""--]] 
--[[Translation missing --]]
--[[ L["[%s] has been added into trust list."] = ""--]] 
--[[Translation missing --]]
--[[ L["[%s] has been updated."] = ""--]] 
--[[Translation missing --]]
--[[ L["[%s] is comming!"] = ""--]] 
--[[Translation missing --]]
--[[ L["[EPGP auto reply] "] = ""--]] 
L["A member is awarded EP"] = "Un membre a gagné des EP"
L["A member is credited GP"] = "Un crédit de GP à été attribué à un membre"
--[[Translation missing --]]
--[[ L["A new tier is here!"] = ""--]] 
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Un nouveau niveau est disponible ! Vous devriez réinitialiser ou recalibrer les GP (Interface -> Options -> AddOns -> EPGP)!"
--[[Translation missing --]]
--[[ L["Accepting settings from [%s]..."] = ""--]] 
--[[Translation missing --]]
--[[ L["Add loot items automatically when loot windows opened or corpse loot received."] = ""--]] 
--[[Translation missing --]]
--[[ L["Adjust all main toons' GP?"] = ""--]] 
--[[Translation missing --]]
--[[ L["Allow adding [name] into standby list by whispering \"epgp standby [name]\" if enabled."] = ""--]] 
--[[Translation missing --]]
--[[ L["Allow whisper for others"] = ""--]] 
--[[Translation missing --]]
--[[ L["ALLOW_NEGATIVE_EP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["ALLOW_NEGATIVE_EP_NAME"] = ""--]] 
L["Alts"] = "Rerolls"
L["An item was disenchanted or deposited into the guild bank"] = "Un objet à été désenchanté ou déposé dans la banque de la guilde."
L["Announce"] = "Annoncer"
--[[Translation missing --]]
--[[ L["Announce EP/GP/PR when a member need/greed/bid"] = ""--]] 
L["Announce epic loot from corpses"] = "Annoncer le butin épique des cadavres"
L["Announce medium"] = "Canal pour les annonces"
--[[Translation missing --]]
--[[ L["Announce need message"] = ""--]] 
L["Announce when someone in your raid derps a bonus roll"] = "Annoncer quand quelqu'un dans votre raid obtient une récompense bonus"
L["Announce when someone in your raid wins something good with bonus roll"] = "Annoncer quand quelqu'un dans votre raid gagne quelque chose de bien dans une récompense bonus"
L["Announce when:"] = "Annoncer quand :"
L["Announcement of EPGP actions"] = "Annonce des actions EPGP"
L["Announces EPGP actions to the specified medium."] = "Annoncer les actions EPGP sur le canal spécifié."
--[[Translation missing --]]
--[[ L["Auto popup"] = ""--]] 
L["Automatic boss tracking"] = "Suivi automatique du boss"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Vérification automatique par l'intermédiaire d'un popup pour créditer des EP en lot au raid et aux membres réservés (standby) quand un boss a été tué."
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Gestion automatique de la liste de réserve par intermédiaire d'un message privé (whisper) lorsque vous est dans un raid. lorsque ceci est sélectionné, la liste de réserve (standby) sera vidée après chaque attribution de points."
L["Automatic loot tracking"] = "Suivi automatique du butin"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Attribution de GP automatique par intermédiaire d'un popup lorsqu'un loot a été reçus. Cette option ce prend en charge seulement si vous est dans un raid et que vous êtes soit le Raid Leader ou le Loot Master."
L["Award EP"] = "Gain d'EP"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Récompenses pour échecs sur les Boss. Requiert DBM, DWE, ou BigWigs."
L["Base GP should be a positive number (>= 0)"] = "Le GP de base doit être un nombre positif (>= 0)"
--[[Translation missing --]]
--[[ L["Bid medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["Blackwing Lair"] = ""--]] 
L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = "Récompense bonus pour %s (%s left): obtient %s (ilvl %d)"
L["Bonus roll for %s (%s left): got gold"] = "Récompense bonus pour %s (%s left): obtient de l'argent"
--[[Translation missing --]]
--[[ L["BOSS_AUTO_REWARD_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["BOSS_AUTO_REWARD_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["BOSS_AUTO_REWARD_START"] = ""--]] 
--[[Translation missing --]]
--[[ L["BOSS_AUTO_REWARD_STOP"] = ""--]] 
--[[Translation missing --]]
--[[ L["BOSS_KILL_AUTO_AWARD_0_EP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["BOSS_WIPE_AUTO_AWARD_0_EP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Clear"] = ""--]] 
--[[Translation missing --]]
--[[ L["Collect bid/roll message to help sorting"] = ""--]] 
--[[Translation missing --]]
--[[ L["COMBATLOG_ENABLE_FAIL"] = ""--]] 
--[[Translation missing --]]
--[[ L["COMBATLOG_ENABLE_REMIND_MSG"] = ""--]] 
--[[Translation missing --]]
--[[ L["COMBATLOG_IS_LOGGING"] = ""--]] 
--[[Translation missing --]]
--[[ L["COMBATLOG_REMIND_ENABLE_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["COMBATLOG_REMIND_ENABLE_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Comment %d"] = ""--]] 
L["Credit GP"] = "Créditer des GP"
L["Credit GP to %s"] = "Créditer des GP à %s"
L["Custom announce channel name"] = "Annonce personnalisée du nom du canal"
--[[Translation missing --]]
--[[ L["Custom items list has been reseted."] = ""--]] 
L["Decay"] = "Réduction"
--[[Translation missing --]]
--[[ L["Decay BASE_GP should be 0 or 1"] = ""--]] 
L["Decay EP and GP by %d%%?"] = "Diminuer les EP et les GP de %d%% ?"
L["Decay of EP/GP by %d%%"] = "Réduction d'EP/GP de %d%%"
L["Decay Percent should be a number between 0 and 100"] = "Le pourcentage de réduction devrait être un nombre entre 0 et 100"
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_P_DESC"] = ""--]] 
L["default"] = "défaut"
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Distribution"] = ""--]] 
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Voulez-vous à nouveau donner (%s) %d EP/%s périodiquement ?"
L["EP Reason"] = "Raison de l'EP"
L["EP/GP are reset"] = "Les EP/GP ont été réinitialisés"
--[[Translation missing --]]
--[[ L["EP/GP/PR announce medium"] = ""--]] 
L["EPGP decay"] = "Décôte EPGP"
L["EPGP is an in game, relational loot distribution system"] = "EPGP est, dans le jeu, un système relationnel de distribution de butin"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP utilise les notes d'officiers pour stocker ses données. Souhaitez-vous réellement éditer manuellement la note d'officier ?"
L["EPGP reset"] = "Réinitialiser EPGP"
--[[Translation missing --]]
--[[ L["Equation"] = ""--]] 
L["expected number"] = "nombre attendu"
L["Export"] = "Exporter"
--[[Translation missing --]]
--[[ L["Export Detail"] = ""--]] 
--[[Translation missing --]]
--[[ L["EXPORT_DETAIL_DESC"] = ""--]] 
L["Extras Percent should be a number between 0 and 100"] = "Pourcentage supplémentaire devrait être un nombre compris entre 0 et 100"
--[[Translation missing --]]
--[[ L["EXTRAS_P_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gear Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Global configuration"] = ""--]] 
L["GP (not EP) is reset"] = "GP (pas EP) réinitialisé"
L["GP (not ep) reset"] = "Réinitialisation des GP (pas EP)"
L["GP is rescaled for the new tier"] = "Les GP ont été rééchelonné pour le nouveau niveau."
L["GP on tooltips"] = "GP sur les infos (tooltip)"
L["GP Reason"] = "Raison du GP"
L["GP rescale for new tier"] = "Rééchelonnement des GP pour le nouveau niveau."
--[[Translation missing --]]
--[[ L["Guild info has been updated."] = ""--]] 
L["Guild or Raid are awarded EP"] = "Les EP ont été attribués à la Guilde/Raid"
L["Hint: You can open these options by typing /epgp config"] = "Astuce : vous pouvez ouvrir ces options en entrant /epgp config"
--[[Translation missing --]]
--[[ L["Icon"] = ""--]] 
L["Idle"] = "Inactif"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Si vous souhaitez être sur la liste des gains mais que vous n'êtes pas dans le raid, vous devez me chuchoter : 'epgp standby' ou 'epgp standby <nom>' où <nom> est le membre qui devrait recevoir les gains"
L["Ignoring EP change for unknown member %s"] = "Ignore les changements d'EP pour le membre inconnu %s"
L["Ignoring GP change for unknown member %s"] = "Ignore les changements de GP pour le membre inconnu %s"
L["Import"] = "Importer"
L["Importing data snapshot taken at: %s"] = "Importation"
L["invalid input"] = "entrée invalide"
L["Invalid officer note [%s] for %s (ignored)"] = "Note d'officier invalide [%s] pour %s (ignoré)"
--[[Translation missing --]]
--[[ L["kill"] = ""--]] 
--[[Translation missing --]]
--[[ L["Legendary Scale"] = ""--]] 
L["List errors"] = "Lister les erreurs"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Liste les erreurs lors du rapport des notes d'officiers sur la fenêtre de discussion par défaut, comme lorsque des membres ont une note d'officier invalide, par exemple."
--[[Translation missing --]]
--[[ L["Logs"] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is almost full (%d/%d)."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is full (%d). %s will not be added into list."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list: "] = ""--]] 
L["Loot tracking threshold"] = "Seuil du suivi de butin"
--[[Translation missing --]]
--[[ L["LOOT_ITEM_LOG_CLEAR_MSG"] = ""--]] 
--[[Translation missing --]]
--[[ L["LOOT_ITEM_LOG_CLEAR_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["LOOT_ITEM_LOG_HEADER"] = ""--]] 
--[[Translation missing --]]
--[[ L["LOOT_ITEM_LOG_SHOW_NUMBER_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["LOOT_RECORD_ITEM_LOG_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["LOOT_RECORD_ITEM_LOG_NAME"] = ""--]] 
L["Main"] = true
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Vérifiez que vous êtes la seule personne changeant les EP et GP. Si vous avez plusieurs personnes changeant les EP et les GP en même temps, par example une récompensant les EP et l'autre créditant les GP, vous risquez une perte de données"
--[[Translation missing --]]
--[[ L["Mass Adjust GP"] = ""--]] 
L["Mass EP Award"] = "Gain d'EP en masse"
--[[Translation missing --]]
--[[ L["MASS_ADJUST_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Message announced when you start a need/greed bid."] = ""--]] 
L["Min EP should be a positive number (>= 0)"] = "L'EP minimum doit être un nombre positif (>= 0)"
--[[Translation missing --]]
--[[ L["Multiplier %d"] = ""--]] 
L["must be equal to or higher than %s"] = "doit être supérieur ou égal à %s"
L["must be equal to or lower than %s"] = "doit être inférieur ou égal à %s"
--[[Translation missing --]]
--[[ L["Naxxramas"] = ""--]] 
--[[Translation missing --]]
--[[ L["Need/greed medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["NEW_VERSION_INTRO_1_5_0"] = ""--]] 
L["Next award in "] = "Prochain gain dans"
--[[Translation missing --]]
--[[ L["Non-hunter"] = ""--]] 
--[[Translation missing --]]
--[[ L["Non-tank"] = ""--]] 
L["off"] = "Désactiver"
L["on"] = "Activer"
L["Only display GP values for items at or above this quality."] = "Afficher uniquement les GP pour les objets de qualité identique ou supérieure à celle-ci."
L["Open the configuration options"] = "Accéder aux options de configuration"
L["Open the debug window"] = "Ouvrir la fenêtre de débogage"
L["Outsiders should be 0 or 1"] = "Les joueurs en attente doivent être à 0 ou 1"
--[[Translation missing --]]
--[[ L["OUTSIDERS_DESC"] = ""--]] 
L["Paste import data here"] = "Copier les données importées ici"
L["Personal Action Log"] = "Historique des actions personnelles"
--[[Translation missing --]]
--[[ L["Please send bid value to raid channel."] = ""--]] 
--[[Translation missing --]]
--[[ L["Please send number to raid channel: "] = ""--]] 
--[[Translation missing --]]
--[[ L["Please whisper bid value to me."] = ""--]] 
--[[Translation missing --]]
--[[ L["Please whisper number to me: "] = ""--]] 
--[[Translation missing --]]
--[[ L["Protect Time (sec)"] = ""--]] 
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Fourni une valeur GP indicative sur les infos (tooltip) des armures. Les objets de quête ou les marques (token) qui peuvent être échangés contre des armures ont également une valeur GP indiquée"
L["Quality threshold"] = "Seuil de qualité"
--[[Translation missing --]]
--[[ L["Recommend value before next tier:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recommend value in current tier:"] = ""--]] 
L["Recurring"] = "Récurrent"
L["Recurring awards resume"] = "Reprise des récompenses périodiques"
L["Recurring awards start"] = "Les récompenses périodiques démarrent"
L["Recurring awards stop"] = "Les récompenses périodiques sont stoppées"
L["Redo"] = "Refaire"
L["Re-scale all main toons' GP to current tier?"] = "Recalibrer les GP de tous les main pour le nouveau niveau"
L["Rescale GP"] = "Recalibrer les GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Recalculer le GP de tous les membres de la guilde. Cela réduira d'un tiers la valeur de tous les GP principaux. A utiliser avec précaution !"
L["Reset all main toons' EP and GP to 0?"] = "Réinitialiser tous les principaux membres d'EP et GP à 0 ?"
L["Reset all main toons' GP to 0?"] = "Réinitialiser à 0 les GP de tous les main"
L["Reset EPGP"] = "Réinitialiser EPGP"
--[[Translation missing --]]
--[[ L["Reset GP"] = ""--]] 
L["Reset only GP"] = "Réinitialiser uniquement les GP"
--[[Translation missing --]]
--[[ L["Reset result when announce and start a bid/need/roll."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reset when announce a bid"] = ""--]] 
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Réinitialise les EP et GP de tous les membres de la guilde. Cela réinitialisera tous les principaux membres d'EP et GP à 0. À utiliser avec précaution !"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Réinitialise les GP (pas EP) de tous les membres de la guilde. Cela va remettre tous les main à 0 GP. A utiliser avec précaution !"
L["Resume recurring award (%s) %d EP/%s"] = "Repris l'attribution d'EP automatique (%s) %d EP/%s"
--[[Translation missing --]]
--[[ L["Select all"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sending: %d / %d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Set gear points (GP multiplier). Each slot could set up to 3 points. Each points has a custom comment."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets loot tracking threshold, to disable the adding on loot below this threshold quality."] = ""--]] 
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Fixe le seuil de suivi de butin, pour désactiver les popup sur le butin de qualité inférieure au seuil."
--[[Translation missing --]]
--[[ L["Sets the announce medium EPGP will use to announce distribution actions."] = ""--]] 
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Régler la moyenne d'annonces d'EPGP qui sera utilisée afin d'annoncer les actions d'EPGP."
L["Sets the custom announce channel name used to announce EPGP actions."] = "Régler le nom du canal personnalisé de l'annonce utilisé pour annoncer les actions d'EPGP."
--[[Translation missing --]]
--[[ L["Sets the medium EPGP will use to collect bid results from members."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets the medium EPGP will use to collect need/greed results from members."] = ""--]] 
--[[Translation missing --]]
--[[ L["Settings sent from trusted members will be accepted without asking."] = ""--]] 
--[[Translation missing --]]
--[[ L["SETTINGS_RECEIVED_POPUP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["should be a none-zero integer"] = ""--]] 
--[[Translation missing --]]
--[[ L["Should be a non-negative integer"] = ""--]] 
--[[Translation missing --]]
--[[ L["should be a positive integer"] = ""--]] 
L["Show everyone"] = "Afficher tout le monde"
--[[Translation missing --]]
--[[ L["Show item level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slots"] = ""--]] 
L["Some english word"] = "Quelques mots d'anglais"
L["Some english word that doesn't exist"] = "Quelques mots d'anglais qui n'existent pas"
L["Standby"] = "En attente"
--[[Translation missing --]]
--[[ L["Standby for others is NOT allowed. Whisper 'epgp standby' instead."] = ""--]] 
L["Standby whispers in raid"] = "Membres de réserve chuchotez lors d'un raid"
L["Start recurring award (%s) %d EP/%s"] = "Commencer la collecte des gains (%s) %d EP/%s"
L["Stop recurring award"] = "Arrêter la collecte des gains"
L["string1"] = true
--[[Translation missing --]]
--[[ L["Sync finished."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync settings to guild ranks:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Temple of Ahn'Qiraj"] = ""--]] 
L["The imported data is invalid"] = "Les données importées ne sont pas valides"
--[[Translation missing --]]
--[[ L["The standby list will be cleared x seconds after each reward."] = ""--]] 
--[[Translation missing --]]
--[[ L["Time protect"] = ""--]] 
L["To export the current standings, copy the text below and post it to: %s"] = "Pour exporter le classement actuel, copier le texte suivant et copier le sur: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Pour restaurer une version précédente du classement, copier et coller le texte depuis: %s"
L["Tooltip"] = "Infos (tooltip)"
--[[Translation missing --]]
--[[ L["Track loot items"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust list (seperate with ',')"] = ""--]] 
L["Undo"] = "Annuler"
L["unknown argument"] = "argument inconnu"
L["unknown selection"] = "sélection inconnue"
--[[Translation missing --]]
--[[ L["Use custom global configuration"] = ""--]] 
L["Using %s for boss kill tracking"] = "Utilise %s pour la surveillance de la mort d'un boss"
L["Value"] = "Valeur"
--[[Translation missing --]]
--[[ L["Web & WeChat Mini Program"] = ""--]] 
--[[Translation missing --]]
--[[ L["When a new tier comes, you may like to increase [standard_ilvl]. That can avoid large gear points. If you do that, a GP rescaling is recommended. Everyone's GP will be changed."] = ""--]] 
--[[Translation missing --]]
--[[ L["WHETHER_TO_START_BOSS_AUTO_REWARD"] = ""--]] 
L["Whisper"] = "Chuchoter"
--[[Translation missing --]]
--[[ L["wipe"] = ""--]] 
L["Wipe awards"] = "Récompenses de wipe"
L["Wiped on %s. Award EP?"] = "Wipe sur %s. Attribuer EP?"
--[[Translation missing --]]
--[[ L["Write into Guild Info"] = ""--]] 
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Vous pouvez maintenant vérifier votre rang EPGP et loot sur le web: http://epgpweb.com"
--[[Translation missing --]]
--[[ L["You may need to deselect \"Show only members\" on EPGP web after uploading."] = ""--]] 
--[[Translation missing --]]
--[[ L["You should probably: increase standard_ilvl, reset or rescale GP."] = ""--]] 

