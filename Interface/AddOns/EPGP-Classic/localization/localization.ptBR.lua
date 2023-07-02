local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "ptBR")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) para %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) para %s"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - esperado 'ligado' ou 'desligado', ou nenhum argumento para alternar."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - esperado 'ligado', 'desligado' ou 'padrão', ou nenhum argumento para alternar."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - esperado 'RRGGBB' ou 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - esperado 'RRGGBBAA' ou 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' - Atalho Inválido."
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - os valores devem estar todos no alcance de 0..1 ou 0..255."
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - os valores devem estar todos no alcance de 0-1 ou 0-255."
--[[Translation missing --]]
--[[ L["%s %s"] = ""--]] 
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - esperado 'ligado' ou 'desligado', ou nenhum argumento para alternar."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - esperado 'ligado', 'desligado' ou 'padrão', ou nenhum argumento para alternar."
L["%s is added to the award list"] = "%s  foi adicionado à lista de recompensa"
L["%s is already in the award list"] = "%s já está na lista de recompensa"
L["%s is dead. Award EP?"] = "%s está morto. Recompensar com EP?"
L["%s is not eligible for EP awards"] = "%s não é elegível para recompensas de EP"
--[[Translation missing --]]
--[[ L["%s is not in the award list now. Whisper me 'epgp standby' to enlist again."] = ""--]] 
--[[Translation missing --]]
--[[ L["%s is now removed from the award list. Whisper me 'epgp standby' to enlist again."] = ""--]] 
L["%s to %s"] = "%s para %s"
--[[Translation missing --]]
--[[ L["%s, %s, %s"] = ""--]] 
--[[Translation missing --]]
--[[ L["%s, %s, %s, %s"] = ""--]] 
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) para %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) para %s"
L["%s: %s to %s"] = "%s: %s para %s"
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
L["A member is awarded EP"] = "Um membro for recompensado com EP"
L["A member is credited GP"] = "Um membro for creditado com GP"
--[[Translation missing --]]
--[[ L["A new tier is here!"] = ""--]] 
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Um novo tier chegou! Você provavelmente deveria resetar ou reescalar o GP (Interface -> Opções -> AddOns -> EPGP)!"
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
L["An item was disenchanted or deposited into the guild bank"] = "Um item foi desencantado ou depositado no banco da guilda"
L["Announce"] = "Anunciar"
--[[Translation missing --]]
--[[ L["Announce EP/GP/PR when a member need/greed/bid"] = ""--]] 
L["Announce epic loot from corpses"] = "Anunciar saques épicos de corpos"
L["Announce medium"] = "Meio de anúncio"
--[[Translation missing --]]
--[[ L["Announce need message"] = ""--]] 
L["Announce when someone in your raid derps a bonus roll"] = "Anunciar quando alguém na sua raide falhar na rolagem de bônus"
L["Announce when someone in your raid wins something good with bonus roll"] = "Anunciar quando alguém na sua raide ganhar algo bom com a rolagem de bônus"
L["Announce when:"] = "Anunciar quando:"
L["Announcement of EPGP actions"] = "Anúncio de ações EPGP"
L["Announces EPGP actions to the specified medium."] = "Anúncia ações EPGP para o meio especificado."
--[[Translation missing --]]
--[[ L["Auto popup"] = ""--]] 
L["Automatic boss tracking"] = "Rastrear boss automaticamente"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Rastrear um boss automaticamente significa que quando um boss for morto irá aparecer um popup para recompensar em massa a raid e os membros da lista de recompensas."
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Manipulando automaticamente a lista de recompesa por meio de \"whispers\" quando estiver em raid. Enquanto esta opção estiver ativa a lista de recompensa será zerada a cada recompensa dada."
L["Automatic loot tracking"] = "Rastreando automaticamente o loot"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Rastreamento automático de loot significa que um popup irá aparecer para creditar GP para o personagem que recebeu o loot. Esta opção só tem efeito se você está em uma raid e você é o \"Raid leader\" ou o \"Master Looter\"."
L["Award EP"] = "Dar EP"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Recompensa para wipes em \"boss\". Requer DBM, DXE ou BigWigs"
L["Base GP should be a positive number (>= 0)"] = "O GP base deve ser um número positivo (>= 0)"
--[[Translation missing --]]
--[[ L["Bid medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["Blackwing Lair"] = ""--]] 
L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = "Rolagem bônus para %s (%s restante): ganhou %s (ilvl %d)"
L["Bonus roll for %s (%s left): got gold"] = "Rolagem bônus para %s (%s restante): ganhou ouro"
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
L["Credit GP"] = "Creditar GP"
L["Credit GP to %s"] = "Creditar GP para %s"
L["Custom announce channel name"] = "Nome do canal personalizado de anúncios"
--[[Translation missing --]]
--[[ L["Custom items list has been reseted."] = ""--]] 
L["Decay"] = "Decair"
--[[Translation missing --]]
--[[ L["Decay BASE_GP should be 0 or 1"] = ""--]] 
L["Decay EP and GP by %d%%?"] = "Decair o EP e GP em %d%%?"
L["Decay of EP/GP by %d%%"] = "Decaindo o EP/GP em %d%%"
L["Decay Percent should be a number between 0 and 100"] = "O Percentual para Decair deve ser um número entre 0 e 100"
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_P_DESC"] = ""--]] 
L["default"] = "padrão"
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Distribution"] = ""--]] 
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Você deseja retomar a recompensa recorrente (%s) %d EP/%s?"
L["EP Reason"] = "Motivo do EP"
L["EP/GP are reset"] = "EP/GP resetados"
--[[Translation missing --]]
--[[ L["EP/GP/PR announce medium"] = ""--]] 
L["EPGP decay"] = "Houver decadência do EPGP"
L["EPGP is an in game, relational loot distribution system"] = "EPGP é um sistema relacional de distribuição de loot interno ao jogo"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "O EPGP está usando os \"Officer Notes\" para armazenar os dados. Você deseja realmente editar o \"Officer Note\" manualmente?"
L["EPGP reset"] = "Resetar o EPGP"
--[[Translation missing --]]
--[[ L["Equation"] = ""--]] 
L["expected number"] = "número esperado"
L["Export"] = "Exportar"
--[[Translation missing --]]
--[[ L["Export Detail"] = ""--]] 
--[[Translation missing --]]
--[[ L["EXPORT_DETAIL_DESC"] = ""--]] 
L["Extras Percent should be a number between 0 and 100"] = "O percentual de extras deve ser um número entre 0 e 100"
--[[Translation missing --]]
--[[ L["EXTRAS_P_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gear Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Global configuration"] = ""--]] 
L["GP (not EP) is reset"] = "GP (não EP) foi resetado"
L["GP (not ep) reset"] = "GP (não ep) resetado"
L["GP is rescaled for the new tier"] = "GP foi redimensionado para o novo tier"
L["GP on tooltips"] = "GP nas tooltips"
L["GP Reason"] = "Motivo do GP"
L["GP rescale for new tier"] = " Redimensionamento de GP para o novo tier"
--[[Translation missing --]]
--[[ L["Guild info has been updated."] = ""--]] 
L["Guild or Raid are awarded EP"] = "Guilda ou Raid forem recompensados com EP"
L["Hint: You can open these options by typing /epgp config"] = "Dica: Você pode abrir estas opções digitando /epgp config"
--[[Translation missing --]]
--[[ L["Icon"] = ""--]] 
L["Idle"] = "Inativo"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Se você deseja estar na lista de recompensas EP mas você não está na raid, você precisa me enviar um \"whisper\" com: 'epgp standby' ou 'epgp standby <nome>' onde <nome> é o personagem que deverá receber as recompensas"
L["Ignoring EP change for unknown member %s"] = "Ignorando mudança no EP de membro desconhecido %s"
L["Ignoring GP change for unknown member %s"] = "Ignorando mudança no GP de membro desconhecido %s"
L["Import"] = "Importar"
L["Importing data snapshot taken at: %s"] = "Importando dados salvos em: %s"
L["invalid input"] = "entrada inválida"
L["Invalid officer note [%s] for %s (ignored)"] = "\"Officer note\" inválida [%s] para %s (ignorada)"
--[[Translation missing --]]
--[[ L["kill"] = ""--]] 
--[[Translation missing --]]
--[[ L["Legendary Scale"] = ""--]] 
L["List errors"] = "Listar erros"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Lista os erros durante a análise das \"Officer Note\" na janela de bate papo padrão. Exemplos são membros com \"officer note\" inválida"
--[[Translation missing --]]
--[[ L["Logs"] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is almost full (%d/%d)."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is full (%d). %s will not be added into list."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list: "] = ""--]] 
L["Loot tracking threshold"] = "Qualidade do loot"
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
L["Main"] = "Principal"
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Tenha certeza de que você é a única pessoa modificando o EP e GP. Se houver várias pessoas modificando o EP e GP na mesma hora, por exemplo, um recompensando EP e outro creditando GP, haverá perda de dados."
--[[Translation missing --]]
--[[ L["Mass Adjust GP"] = ""--]] 
L["Mass EP Award"] = "EP em massa"
--[[Translation missing --]]
--[[ L["MASS_ADJUST_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Message announced when you start a need/greed bid."] = ""--]] 
L["Min EP should be a positive number (>= 0)"] = "O EP mínimo deve ser um número positivo (>= 0)"
--[[Translation missing --]]
--[[ L["Multiplier %d"] = ""--]] 
L["must be equal to or higher than %s"] = "deve ser igual ou maior que %s"
L["must be equal to or lower than %s"] = "deve ser igual ou menor que %s"
--[[Translation missing --]]
--[[ L["Naxxramas"] = ""--]] 
--[[Translation missing --]]
--[[ L["Need/greed medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["NEW_VERSION_INTRO_1_5_0"] = ""--]] 
L["Next award in "] = "Próxima recompensa em"
--[[Translation missing --]]
--[[ L["Non-hunter"] = ""--]] 
--[[Translation missing --]]
--[[ L["Non-tank"] = ""--]] 
L["off"] = "desligado"
L["on"] = "ligado"
L["Only display GP values for items at or above this quality."] = "Apenas mostrar o valor do GP de items desta qualidade ou acima."
L["Open the configuration options"] = "Abrir as opções de configuração"
L["Open the debug window"] = "Abrir a janela de debug"
L["Outsiders should be 0 or 1"] = "Forasteiros deve ser 0 ou 1"
--[[Translation missing --]]
--[[ L["OUTSIDERS_DESC"] = ""--]] 
L["Paste import data here"] = "Copiar dados de importação aqui"
L["Personal Action Log"] = "Histórico pessoal de ações"
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
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Propõe um valor de GP para os armamentos nas tooltips. Items de \"quest\" ou \"tokens\" que podem ser trocados por armamentos possuirão também um valor de GP proposto."
L["Quality threshold"] = "Qualidade do Loot"
--[[Translation missing --]]
--[[ L["Recommend value before next tier:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recommend value in current tier:"] = ""--]] 
L["Recurring"] = "Recorrente"
L["Recurring awards resume"] = "As recompensas recorrentes foram retomadas"
L["Recurring awards start"] = "As recompensas recorrentes foram iniciadas"
L["Recurring awards stop"] = "As recompensas recorrentes foram paradas"
L["Redo"] = "Refazer"
L["Re-scale all main toons' GP to current tier?"] = "Redimensionar o GP de todos os personagens principais para o novo tier?"
L["Rescale GP"] = "Redimensionar GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Redimnensionar GP de todos os membros da guilda. Isso reduzirá o GP de todos os personagens principais por um valor equivalente à um tier. Use com cuidado!"
L["Reset all main toons' EP and GP to 0?"] = "Resetar o EP e GP de todos os personagens principais para 0 ?"
L["Reset all main toons' GP to 0?"] = "Resetar o GP de todos os personagens principais para 0?"
L["Reset EPGP"] = "Resetar EPGP"
--[[Translation missing --]]
--[[ L["Reset GP"] = ""--]] 
L["Reset only GP"] = "Resetar somente GP"
--[[Translation missing --]]
--[[ L["Reset result when announce and start a bid/need/roll."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reset when announce a bid"] = ""--]] 
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Reseta o EP e o GP de todos os membros da guilda. Isto irá definir o EP e GP de todos os personagens principais para 0. Use com cuidado!"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Reseta o GP (não o EP!) de todos os membros da guilda. Isso definirá o GP de todos os personagens principais para 0. Use com cuidado!"
L["Resume recurring award (%s) %d EP/%s"] = "Retomando a recompensa recorrente (%s) %d EP/%s"
--[[Translation missing --]]
--[[ L["Select all"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sending: %d / %d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Set gear points (GP multiplier). Each slot could set up to 3 points. Each points has a custom comment."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets loot tracking threshold, to disable the adding on loot below this threshold quality."] = ""--]] 
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Define o rastreamento de qualidade do loot para desativar o popup de loot quando for abaixo desta qualidade."
--[[Translation missing --]]
--[[ L["Sets the announce medium EPGP will use to announce distribution actions."] = ""--]] 
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Define o anúncio médio que o EPGP irá utilizar para anunciar as ações do EPGP."
L["Sets the custom announce channel name used to announce EPGP actions."] = "Define o nome do canal personalizado para utilizado para anunciar as ações do EPGP."
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
L["Show everyone"] = "Mostrar todos"
--[[Translation missing --]]
--[[ L["Show item level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slots"] = ""--]] 
L["Some english word"] = "Uma palavra aleatória"
L["Some english word that doesn't exist"] = "Uma palavra aleatória que não existe"
L["Standby"] = "Espera"
--[[Translation missing --]]
--[[ L["Standby for others is NOT allowed. Whisper 'epgp standby' instead."] = ""--]] 
L["Standby whispers in raid"] = "Membros na raid que enviaram sussurros para a lista de recompensa"
L["Start recurring award (%s) %d EP/%s"] = "Iniciando a recompensa recorrente (%s) %d EP/%s"
L["Stop recurring award"] = "Parando a recompensa recorrente"
L["string1"] = true
--[[Translation missing --]]
--[[ L["Sync finished."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync settings to guild ranks:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Temple of Ahn'Qiraj"] = ""--]] 
L["The imported data is invalid"] = "Os dados importados são inválidos"
--[[Translation missing --]]
--[[ L["The standby list will be cleared x seconds after each reward."] = ""--]] 
--[[Translation missing --]]
--[[ L["Time protect"] = ""--]] 
L["To export the current standings, copy the text below and post it to: %s"] = "Para exportar a atual classificação, copie o texto abaixo e cole em: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Para restaurar para uma versão anterior da classificação de EPGP, copie e cole o texto de: %s"
L["Tooltip"] = true
--[[Translation missing --]]
--[[ L["Track loot items"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust list (seperate with ',')"] = ""--]] 
L["Undo"] = "Desfazer"
L["unknown argument"] = "argumento desconhecido"
L["unknown selection"] = "seleção desconhecida"
--[[Translation missing --]]
--[[ L["Use custom global configuration"] = ""--]] 
L["Using %s for boss kill tracking"] = "Usando %s para rastrear morte de boss"
L["Value"] = "Valor"
--[[Translation missing --]]
--[[ L["Web & WeChat Mini Program"] = ""--]] 
--[[Translation missing --]]
--[[ L["When a new tier comes, you may like to increase [standard_ilvl]. That can avoid large gear points. If you do that, a GP rescaling is recommended. Everyone's GP will be changed."] = ""--]] 
--[[Translation missing --]]
--[[ L["WHETHER_TO_START_BOSS_AUTO_REWARD"] = ""--]] 
L["Whisper"] = "Sussurro"
--[[Translation missing --]]
--[[ L["wipe"] = ""--]] 
L["Wipe awards"] = "Recompensar Wipes"
L["Wiped on %s. Award EP?"] = "Wipe em %s. Recompensar EP?"
--[[Translation missing --]]
--[[ L["Write into Guild Info"] = ""--]] 
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Você pode verificar agora a classificação do EPGP e loot na internet: http://www.epgpweb.com"
--[[Translation missing --]]
--[[ L["You may need to deselect \"Show only members\" on EPGP web after uploading."] = ""--]] 
--[[Translation missing --]]
--[[ L["You should probably: increase standard_ilvl, reset or rescale GP."] = ""--]] 

