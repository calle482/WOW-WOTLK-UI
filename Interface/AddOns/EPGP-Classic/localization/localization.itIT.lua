local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "itIT")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) a %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) a %s"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - previsto 'on' o 'off', o nessun valore per funzionare."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - previsto 'on', 'off' o 'default', o nessun valore per funzionare."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - previsto 'RRGGBB' o 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - previsto 'RRGGBBAA' o 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' -  Keybinding invalido"
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - tutti i valori devono essere nell'intervallo 0..1 o 0..255."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - tutti i valori devono essere nell'intervallo 0-1 o 0-255"
--[[Translation missing --]]
--[[ L["%s %s"] = ""--]] 
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - previsto 'on' o 'off', o nessun valore per funzionare."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "%s' '%s' -previsto 'on', 'off' o'default', o nessun valore per funzionare."
L["%s is added to the award list"] = "%s è aggiunto alla lista dei premi"
L["%s is already in the award list"] = "%s è già sulla lista dei premi"
L["%s is dead. Award EP?"] = "%s è stato sconfitto. Premi con EP?"
L["%s is not eligible for EP awards"] = "%s non è idoneo alla lista dei premi EP "
--[[Translation missing --]]
--[[ L["%s is not in the award list now. Whisper me 'epgp standby' to enlist again."] = ""--]] 
--[[Translation missing --]]
--[[ L["%s is now removed from the award list. Whisper me 'epgp standby' to enlist again."] = ""--]] 
L["%s to %s"] = "%s a %s"
--[[Translation missing --]]
--[[ L["%s, %s, %s"] = ""--]] 
--[[Translation missing --]]
--[[ L["%s, %s, %s, %s"] = ""--]] 
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) a %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) a %s"
L["%s: %s to %s"] = "%s: %s a %s"
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
L["A member is awarded EP"] = "Un membro ha guadagnato EP"
L["A member is credited GP"] = "Un membro ha speso GP"
--[[Translation missing --]]
--[[ L["A new tier is here!"] = ""--]] 
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Un nuovo tier è qui! Dovresti probabilmente azzerare o riorganizzare i GP (Interfaccia-> Opzioni -> AddOns -> EPGP)"
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
L["Alts"] = true
L["An item was disenchanted or deposited into the guild bank"] = "Un oggetto è stato disincantato o depositato nella banca di gilda"
L["Announce"] = "Annuncio"
--[[Translation missing --]]
--[[ L["Announce EP/GP/PR when a member need/greed/bid"] = ""--]] 
--[[Translation missing --]]
--[[ L["Announce epic loot from corpses"] = ""--]] 
L["Announce medium"] = "Metodo di Annuncio"
--[[Translation missing --]]
--[[ L["Announce need message"] = ""--]] 
--[[Translation missing --]]
--[[ L["Announce when someone in your raid derps a bonus roll"] = ""--]] 
--[[Translation missing --]]
--[[ L["Announce when someone in your raid wins something good with bonus roll"] = ""--]] 
L["Announce when:"] = "Annuncia quando :"
L["Announcement of EPGP actions"] = "Annuncio di azioni EPGP"
L["Announces EPGP actions to the specified medium."] = "Annuncia azioni EPGP al mezzo specificato "
--[[Translation missing --]]
--[[ L["Auto popup"] = ""--]] 
L["Automatic boss tracking"] = "Controllo automatico dei boss"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Il controllo automatico dei boss significa che una finestra, per distribuire un premio di massa al raid e coloro in attesa, appare ogni qual volta un boss è sconfitto."
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Gestione automatica di coloro in attesa effettuata tramite sussurri durante il raid. Quando ciò è abilitato, la lista di coloro in attesa è eliminata dopo ogni premio."
L["Automatic loot tracking"] = "Controllo automatico dei loot."
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Il controllo automatico dei loot significa che una finestra per assegnare dei GP apparirà ogni volta che un personaggio riceve un loot. Questa opzione funziona solo se sei in una incursione e sei o Respnsabile dei loot o a Capo dell'incursione"
L["Award EP"] = "Premi EP"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Premia per le sconfitte ai boss. Richiede DBM, DXE o BigWigs."
L["Base GP should be a positive number (>= 0)"] = "I GP Base dovrebbero essere un numero positivo (>= 0)"
--[[Translation missing --]]
--[[ L["Bid medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["Blackwing Lair"] = ""--]] 
--[[Translation missing --]]
--[[ L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = ""--]] 
--[[Translation missing --]]
--[[ L["Bonus roll for %s (%s left): got gold"] = ""--]] 
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
L["Credit GP"] = "Aggiungi GP"
L["Credit GP to %s"] = "Aggiungi GP a %s"
L["Custom announce channel name"] = "Canale personalizzato per gli annunci"
--[[Translation missing --]]
--[[ L["Custom items list has been reseted."] = ""--]] 
L["Decay"] = "Decadenza"
--[[Translation missing --]]
--[[ L["Decay BASE_GP should be 0 or 1"] = ""--]] 
L["Decay EP and GP by %d%%?"] = "Decadenza EP e GP di %d%%?"
L["Decay of EP/GP by %d%%"] = "Decadenza di EP/GP di %d%%"
L["Decay Percent should be a number between 0 and 100"] = "La percentuale di decadenza dovrebbe essere un numero tra 0 e 100"
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_P_DESC"] = ""--]] 
L["default"] = "predefinito"
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Distribution"] = ""--]] 
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Vuoi continuare a dare il premio ricorrente (%s) %d EP/%s?"
L["EP Reason"] = "Ricorrenza EP"
L["EP/GP are reset"] = "EP/GP Azzerati"
--[[Translation missing --]]
--[[ L["EP/GP/PR announce medium"] = ""--]] 
L["EPGP decay"] = "Decadenza EPGP"
L["EPGP is an in game, relational loot distribution system"] = "EPGP è un sistema relazionale di distribuzione loot in gioco."
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP usa le Note degli Ufficiali per i suoi dati. Vuoi davvero modificare le Note degli Ufficiali a mano?"
L["EPGP reset"] = "Azzeramento EPGP"
--[[Translation missing --]]
--[[ L["Equation"] = ""--]] 
L["expected number"] = "numero previsto"
L["Export"] = "Esportare"
--[[Translation missing --]]
--[[ L["Export Detail"] = ""--]] 
--[[Translation missing --]]
--[[ L["EXPORT_DETAIL_DESC"] = ""--]] 
L["Extras Percent should be a number between 0 and 100"] = "La percentuale Extra dovrebbe essere un numero da 0 a 100"
--[[Translation missing --]]
--[[ L["EXTRAS_P_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gear Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Global configuration"] = ""--]] 
L["GP (not EP) is reset"] = "GP (non gli EP) sono azzerati"
L["GP (not ep) reset"] = "GP (non gli EP) azzerati"
L["GP is rescaled for the new tier"] = "GP sono ricalcolati per il nuovo tier"
L["GP on tooltips"] = "GP sui tooltip"
L["GP Reason"] = "Ricorrenza GP"
L["GP rescale for new tier"] = "GP ricalcolati per il nuovo tier"
--[[Translation missing --]]
--[[ L["Guild info has been updated."] = ""--]] 
L["Guild or Raid are awarded EP"] = "Premio EP alla Gilda o all'Incursione"
L["Hint: You can open these options by typing /epgp config"] = "Aiuto : Puoi aprire le opzioni digitando /epgp config"
--[[Translation missing --]]
--[[ L["Icon"] = ""--]] 
L["Idle"] = "Fermo"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Se vuoi essere sulla lista dei Premi ma non sei in raid, devi sussurrarmi : 'epgp standby' o 'epgp standby <nome>' dove <nome> è il nome del personaggio che deve ricevere il Premio"
L["Ignoring EP change for unknown member %s"] = "Ignora cambi EP per membro sconosciuto %s"
L["Ignoring GP change for unknown member %s"] = "Ignora cambi GP per membro sconosciuto %s"
L["Import"] = "Importare"
L["Importing data snapshot taken at: %s"] = "Sto importando un salvataggio preso il "
L["invalid input"] = "inserimento errato"
L["Invalid officer note [%s] for %s (ignored)"] = "Note degli Ufficiali invalide [%s] per %s (ignorato)"
--[[Translation missing --]]
--[[ L["kill"] = ""--]] 
--[[Translation missing --]]
--[[ L["Legendary Scale"] = ""--]] 
L["List errors"] = "Elenca errori"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Elenca errori durante l'analisi delle note degli ufficiali nel riquadro chat predefinito. Gli esempi sono membri con note degli ufficiali invalide."
--[[Translation missing --]]
--[[ L["Logs"] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is almost full (%d/%d)."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is full (%d). %s will not be added into list."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list: "] = ""--]] 
L["Loot tracking threshold"] = "Limite di controllo loot"
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
--[[Translation missing --]]
--[[ L["Main"] = ""--]] 
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Devi essere sicuro di essere l'unica persona a cambiare EP e GP. Se ci sono più persone che cambiano EP e GP nello stesso momento, ad esempio uno da EP e l'altro GP, potrai avere perdite di dati."
--[[Translation missing --]]
--[[ L["Mass Adjust GP"] = ""--]] 
L["Mass EP Award"] = "Premio EP di Massa"
--[[Translation missing --]]
--[[ L["MASS_ADJUST_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Message announced when you start a need/greed bid."] = ""--]] 
L["Min EP should be a positive number (>= 0)"] = "Il Valore EP Min dev'essere un numero positivo (>= 0)"
--[[Translation missing --]]
--[[ L["Multiplier %d"] = ""--]] 
L["must be equal to or higher than %s"] = "deve essere uguale o superiore a %s"
L["must be equal to or lower than %s"] = "deve essere uguale o inferiore a %s"
--[[Translation missing --]]
--[[ L["Naxxramas"] = ""--]] 
--[[Translation missing --]]
--[[ L["Need/greed medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["NEW_VERSION_INTRO_1_5_0"] = ""--]] 
L["Next award in "] = "Prossimo premio in"
--[[Translation missing --]]
--[[ L["Non-hunter"] = ""--]] 
--[[Translation missing --]]
--[[ L["Non-tank"] = ""--]] 
L["off"] = true
L["on"] = true
L["Only display GP values for items at or above this quality."] = "Mostra solo i valori GP per oggetti di questa qualità o superiore"
L["Open the configuration options"] = "Apri le opzioni di configurazione."
L["Open the debug window"] = "Apri la finestra di debug."
L["Outsiders should be 0 or 1"] = "Gli estranei dovrebbero essere 0 o 1"
--[[Translation missing --]]
--[[ L["OUTSIDERS_DESC"] = ""--]] 
L["Paste import data here"] = "Incolla dati qui"
L["Personal Action Log"] = "Diario personale di attività"
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
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Propone un valore GP degli oggetti sui tooltip. Gli oggetti quest o i token che possono essere commerciati per oggetti avranno anche un valore GP proposto."
L["Quality threshold"] = "Limite qualità"
--[[Translation missing --]]
--[[ L["Recommend value before next tier:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recommend value in current tier:"] = ""--]] 
L["Recurring"] = "Ripetizione"
L["Recurring awards resume"] = "Premio ricorrente riprende"
L["Recurring awards start"] = "Premio ricorrente inizia"
L["Recurring awards stop"] = "Premio ricorrente si ferma"
L["Redo"] = "Rifare"
L["Re-scale all main toons' GP to current tier?"] = "Ricalcola tutti i GP dei giocatori principali al tier attuale?"
L["Rescale GP"] = "Ricalcola GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Ricalcola i GP di tutti i membri della gilda. Ciò ridurrà i GP di tutti i giocatori principali di un valore pari ad un tier. Usare con attenzione."
L["Reset all main toons' EP and GP to 0?"] = "Azzera gli EP ei GP di tutti i personaggi principali a 0?"
L["Reset all main toons' GP to 0?"] = "Azzera i GP di tutti i giocatori principali a zero?"
L["Reset EPGP"] = "Azzera EPGP"
--[[Translation missing --]]
--[[ L["Reset GP"] = ""--]] 
L["Reset only GP"] = "Azzera solo i GP"
--[[Translation missing --]]
--[[ L["Reset result when announce and start a bid/need/roll."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reset when announce a bid"] = ""--]] 
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Azzera gli EP e i GP di tutti i membri della gilda. Ciò porterà gli EP ei GP di tutti i personaggi principali a 0. Usare con attenzione!"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Azzera i GP (non gli EP) di tutti i membri della gilda. Questo porterà i GP di tutti i giocatori a zero. Usare con attenzione!"
L["Resume recurring award (%s) %d EP/%s"] = "Continuo il premio ricorrente (%s) %d EP/%s"
--[[Translation missing --]]
--[[ L["Select all"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sending: %d / %d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Set gear points (GP multiplier). Each slot could set up to 3 points. Each points has a custom comment."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets loot tracking threshold, to disable the adding on loot below this threshold quality."] = ""--]] 
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Configura il limite di controllo loot, per disabilitare la finestra sui loot sotto il limite di qualità"
--[[Translation missing --]]
--[[ L["Sets the announce medium EPGP will use to announce distribution actions."] = ""--]] 
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Configura il modo in cui EPGP annuncerà le azioni EPGP."
L["Sets the custom announce channel name used to announce EPGP actions."] = "Configura il canale personalizzato utilizzato per annunciare le azioni EPGP"
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
L["Show everyone"] = "Mostra tutti"
--[[Translation missing --]]
--[[ L["Show item level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slots"] = ""--]] 
L["Some english word"] = "Qualche parola italiana"
L["Some english word that doesn't exist"] = "Qualche parola italiana che non esiste"
L["Standby"] = "In Attesa"
--[[Translation missing --]]
--[[ L["Standby for others is NOT allowed. Whisper 'epgp standby' instead."] = ""--]] 
L["Standby whispers in raid"] = "Sussurri di coloro in attesa durante l'incursione."
L["Start recurring award (%s) %d EP/%s"] = "Inizia Premio Ricorrente (%s) %d EP/%s"
L["Stop recurring award"] = "Termina Premio Ricorrente"
L["string1"] = true
--[[Translation missing --]]
--[[ L["Sync finished."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync settings to guild ranks:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Temple of Ahn'Qiraj"] = ""--]] 
L["The imported data is invalid"] = "I dati importati sono invalidi"
--[[Translation missing --]]
--[[ L["The standby list will be cleared x seconds after each reward."] = ""--]] 
--[[Translation missing --]]
--[[ L["Time protect"] = ""--]] 
L["To export the current standings, copy the text below and post it to: %s"] = "Per esportare la classifica attuale, copia il testo qui sotto e incollalo su: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Per recuperare una versione precedente della classifica, copia e incolla il testo da: %s"
L["Tooltip"] = true
--[[Translation missing --]]
--[[ L["Track loot items"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust list (seperate with ',')"] = ""--]] 
L["Undo"] = "Disfai"
L["unknown argument"] = "argomento sconosciuto"
L["unknown selection"] = "selezione sconosciuta"
--[[Translation missing --]]
--[[ L["Use custom global configuration"] = ""--]] 
L["Using %s for boss kill tracking"] = "Uso %s per il controllo delle uccisioni dei boss."
L["Value"] = "Valore"
--[[Translation missing --]]
--[[ L["Web & WeChat Mini Program"] = ""--]] 
--[[Translation missing --]]
--[[ L["When a new tier comes, you may like to increase [standard_ilvl]. That can avoid large gear points. If you do that, a GP rescaling is recommended. Everyone's GP will be changed."] = ""--]] 
--[[Translation missing --]]
--[[ L["WHETHER_TO_START_BOSS_AUTO_REWARD"] = ""--]] 
L["Whisper"] = "Sussurro"
--[[Translation missing --]]
--[[ L["wipe"] = ""--]] 
L["Wipe awards"] = "Premio per la sconfitta"
L["Wiped on %s. Award EP?"] = "Sconfitti a %s. Premi con EP?"
--[[Translation missing --]]
--[[ L["Write into Guild Info"] = ""--]] 
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Puoi vedere la classifica EP e i loot sul web : http://www.epgpweb.com"
--[[Translation missing --]]
--[[ L["You may need to deselect \"Show only members\" on EPGP web after uploading."] = ""--]] 
--[[Translation missing --]]
--[[ L["You should probably: increase standard_ilvl, reset or rescale GP."] = ""--]] 

