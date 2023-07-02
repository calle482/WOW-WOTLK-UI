local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "ruRU")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) для %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) для %s"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - ожидает 'on', 'off' или отсутствие аргумента при переключении."
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - ожидает 'on', 'off', 'default' или отсутствие аргумента при переключении."
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - ожидает 'RRGGBB' или 'r g b'."
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - ожидает 'RRGGBBAA' или 'r g b a'."
L["'%s' - Invalid Keybinding."] = "'%s' - неправильная привязка клавиш"
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - все значения должны быть в диапазонах 0...1 или 0...255"
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - все значения должны быть в диапазонах 0 - 1 или 0 - 255"
L["%s %s"] = true
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - ожидает 'on', 'off' или отсутствие аргумента при переключении."
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - ожидает 'on', 'off', 'default' или отсутствие аргумента при переключении."
L["%s is added to the award list"] = "%s добавлен в список награждения"
L["%s is already in the award list"] = "%s уже находится в списке награждения"
L["%s is dead. Award EP?"] = "%s мёртв. Начислить ЕР?"
L["%s is not eligible for EP awards"] = "%s не подходит для начисления ЕР"
L["%s is not in the award list now. Whisper me 'epgp standby' to enlist again."] = " %s сейчас нет в списке наград. Напишите мне 'epgp standby' чтобы снова зачислить."
L["%s is now removed from the award list. Whisper me 'epgp standby' to enlist again."] = "%s теперь удален из списка наград. Напишите мне 'epgp standby' чтобы снова зачислить."
L["%s to %s"] = "%s для %s"
L["%s, %s, %s"] = " %s, %s, %s"
--[[Translation missing --]]
--[[ L["%s, %s, %s, %s"] = ""--]] 
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) для %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) для %s"
L["%s: %s to %s"] = "%s: %s для %s"
L["/roll if you want this item. DO NOT roll more than one time."] = "/roll, если вам нужен этот предмет. НЕ НАДО ролить больше одного раза."
L["[%s] has been added into trust list."] = "[%s] добавлен в список доверия (белый список)."
L["[%s] has been updated."] = "[%s] был обновлен."
L["[%s] is comming!"] = "[%s] приближается!"
L["[EPGP auto reply] "] = "[Автоответчик EPGP]"
L["A member is awarded EP"] = "Члену начисляют EP"
L["A member is credited GP"] = "Члену начисляют GP"
--[[Translation missing --]]
--[[ L["A new tier is here!"] = ""--]] 
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "Новый ТИР здесь! Вероятно, вы должны сбросить или пересчитать GP (Интерфейс -> ... -> EPGP)!"
L["Accepting settings from [%s]..."] = "Принятие настроек от [%s] ..."
L["Add loot items automatically when loot windows opened or corpse loot received."] = "Добавляет предметы добычи автоматически при открытии окон добычи или получении добычи с тела."
--[[Translation missing --]]
--[[ L["Adjust all main toons' GP?"] = ""--]] 
L["Allow adding [name] into standby list by whispering \"epgp standby [name]\" if enabled."] = "Разрешает добавление [имя] в список ожидания, прошептав «epgp standby [имя]», если включено."
--[[Translation missing --]]
--[[ L["Allow whisper for others"] = ""--]] 
L["ALLOW_NEGATIVE_EP_DESC"] = "Разрешите чьему-то EP быть отрицательным целым числом. Функция тестируется, возможны ошибки."
L["ALLOW_NEGATIVE_EP_NAME"] = "Разрешить отрицательный EP (функция тестируется)"
L["Alts"] = "Альты"
L["An item was disenchanted or deposited into the guild bank"] = "Предмет был распылен или передан в гильд банк"
L["Announce"] = "Оповещение"
L["Announce EP/GP/PR when a member need/greed/bid"] = "Объявлять EP/GP/PR когда игрок жмет need/greed/bid"
L["Announce epic loot from corpses"] = "Сообщить об эпической добычи с трупа"
L["Announce medium"] = "Оповещение среднего"
L["Announce need message"] = "Объявлять нажатие need"
L["Announce when someone in your raid derps a bonus roll"] = "Оповещать, когда кто нибудь из рейда имеет бонус к роллу "
L["Announce when someone in your raid wins something good with bonus roll"] = "Сообщить, если кто-либо в Вашем рейде выиграл что-то благодаря бонусному броску"
L["Announce when:"] = "Оповещать, когда:"
L["Announcement of EPGP actions"] = "Оповещение действий EPGP"
L["Announces EPGP actions to the specified medium."] = "Объявлять о действиях EPGP в указанный канал."
L["Auto popup"] = "Автоматическое всплывающее окно"
L["Automatic boss tracking"] = "Автоматическое отслеживание боссов"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "Автоматическое отслеживание боссов посредством всплывающего окна для массового начисления EP участникам рейда и резерву, когда босс убит."
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "Автоматически обрабатывать список резерва через /шепот, когда в рейде. Список резерва очищается после каждого начисления."
L["Automatic loot tracking"] = "Авто отслеживание добычи"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "Автоматически выводить окно для начисления GP при получение вещей игроками. Эта опция работает только в рейде и только если Вы Рейд Лидер или Лут Мастер."
L["Award EP"] = "Начислить ЕР"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "Награды за вайпы (смерти) на боссах. Требует DBM, DXE или BigWigs."
L["Base GP should be a positive number (>= 0)"] = "Базовый GP должен быть положительным числом (>= 0)"
L["Bid medium"] = "Средняя ставка"
L["Blackwing Lair"] = "Логово крыла тьмы"
L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = "Дополнительный бросок для %s (%s left): получено %s (ilvl %d)"
L["Bonus roll for %s (%s left): got gold"] = "Дополнительный бросок для %s (%s left): получено золото"
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
L["Clear"] = "Очистить"
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
L["Credit GP"] = "Начислить GP"
L["Credit GP to %s"] = "Начислить GP для игрока %s"
L["Custom announce channel name"] = "Имя произвольного канала для объявлений "
--[[Translation missing --]]
--[[ L["Custom items list has been reseted."] = ""--]] 
L["Decay"] = "Снижение"
--[[Translation missing --]]
--[[ L["Decay BASE_GP should be 0 or 1"] = ""--]] 
L["Decay EP and GP by %d%%?"] = "Уменьшить EP и GP на %d%%?"
L["Decay of EP/GP by %d%%"] = "Уменьшение EP/GP на %d%%"
L["Decay Percent should be a number between 0 and 100"] = "Процент cнижения должен быть числом между 0 и 100"
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_P_DESC"] = ""--]] 
L["default"] = "по умолчанию"
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Distribution"] = ""--]] 
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "Продолжить начисление EP (%s) %d EP/%s?"
L["EP Reason"] = "Причина для начисления EP"
L["EP/GP are reset"] = "Значения EP/GP сброшено"
--[[Translation missing --]]
--[[ L["EP/GP/PR announce medium"] = ""--]] 
L["EPGP decay"] = "Снижение EPGP"
L["EPGP is an in game, relational loot distribution system"] = "EPGP - это внутриигровая система распределения добычи, основанная на соотношении рейтингов"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP использует офицерские заметки для хранения данных. Вы действительно хотите изменить офицерские заметки вручную?"
L["EPGP reset"] = "Сброс EPGP"
--[[Translation missing --]]
--[[ L["Equation"] = ""--]] 
L["expected number"] = "обнаружено число"
L["Export"] = "Экспорт"
--[[Translation missing --]]
--[[ L["Export Detail"] = ""--]] 
--[[Translation missing --]]
--[[ L["EXPORT_DETAIL_DESC"] = ""--]] 
L["Extras Percent should be a number between 0 and 100"] = "Дополнительный процент должен быть числом между 0 и 100"
--[[Translation missing --]]
--[[ L["EXTRAS_P_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gear Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Global configuration"] = ""--]] 
L["GP (not EP) is reset"] = "GP (но не EP) сброшены"
L["GP (not ep) reset"] = "GP (но не EP) сброс"
L["GP is rescaled for the new tier"] = "GP пересчитаны для нового тира"
L["GP on tooltips"] = "GP в подсказках"
L["GP Reason"] = "Причина для начисления GP"
L["GP rescale for new tier"] = "Пересчет GP для нового тира"
--[[Translation missing --]]
--[[ L["Guild info has been updated."] = ""--]] 
L["Guild or Raid are awarded EP"] = "Гильдии или рейду предоставляют EP"
L["Hint: You can open these options by typing /epgp config"] = "Подсказка: Вы можете открыть это окно настроек, набрав /epgp config"
--[[Translation missing --]]
--[[ L["Icon"] = ""--]] 
L["Idle"] = "Бездействие"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "Если вы хотите быть в списке замены, но не находитесь в рейде, вы должны шепнуть мне 'epgp standby' или 'epgp standby <имя>', где <имя> - имя игрока, который будет находиться на замене."
L["Ignoring EP change for unknown member %s"] = "Игнорировать изменения EP для неизвестного игрока %s"
L["Ignoring GP change for unknown member %s"] = "Игнорировать изменения GP для неизвестного игрока %s"
L["Import"] = "Импорт"
L["Importing data snapshot taken at: %s"] = "Импорт данных за: %s"
L["invalid input"] = "ошибка ввода"
L["Invalid officer note [%s] for %s (ignored)"] = "Неверная офицерская заметка [%s] для %s (проигнорирована)"
--[[Translation missing --]]
--[[ L["kill"] = ""--]] 
--[[Translation missing --]]
--[[ L["Legendary Scale"] = ""--]] 
L["List errors"] = "Выводить ошибки"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "Выводить ошибки при разборе офицерских заметок в стандартное окно чата. Например, для игроков с некорректными офицерскими заметками."
--[[Translation missing --]]
--[[ L["Logs"] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is almost full (%d/%d)."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is full (%d). %s will not be added into list."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list: "] = ""--]] 
L["Loot tracking threshold"] = "Порог отслеживания добычи"
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
L["Main"] = "Мэйн"
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "Убедитесь, что только вы начисляете EP и GP. Если несколько людей изменяют EP и GP одновременно, например, один начисляет EP, а другой - GP, то это может привести к потере данных."
--[[Translation missing --]]
--[[ L["Mass Adjust GP"] = ""--]] 
L["Mass EP Award"] = "Массовое начисление EP"
--[[Translation missing --]]
--[[ L["MASS_ADJUST_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Message announced when you start a need/greed bid."] = ""--]] 
L["Min EP should be a positive number (>= 0)"] = "Минимальное значение EP должно быть положительным числом (>= 0)"
--[[Translation missing --]]
--[[ L["Multiplier %d"] = ""--]] 
L["must be equal to or higher than %s"] = "должно быть равно или больше чем %s"
L["must be equal to or lower than %s"] = "должно быть равно или меньше, чем %s"
--[[Translation missing --]]
--[[ L["Naxxramas"] = ""--]] 
--[[Translation missing --]]
--[[ L["Need/greed medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["NEW_VERSION_INTRO_1_5_0"] = ""--]] 
L["Next award in "] = "Следующее начисление через"
--[[Translation missing --]]
--[[ L["Non-hunter"] = ""--]] 
--[[Translation missing --]]
--[[ L["Non-tank"] = ""--]] 
L["off"] = "выкл"
L["on"] = "вкл"
L["Only display GP values for items at or above this quality."] = "Отображать значения GP только для предметов заданного или лучшего качества"
L["Open the configuration options"] = "Открыть настройки конфигурации"
L["Open the debug window"] = "Открыть окно отладки"
L["Outsiders should be 0 or 1"] = "Outsiders должно быть 0 или 1"
--[[Translation missing --]]
--[[ L["OUTSIDERS_DESC"] = ""--]] 
L["Paste import data here"] = "Вставьте сюда данные для импорта"
L["Personal Action Log"] = "Персональная история изменений"
--[[Translation missing --]]
--[[ L["Please send bid value to raid channel."] = ""--]] 
--[[Translation missing --]]
--[[ L["Please send number to raid channel: "] = ""--]] 
--[[Translation missing --]]
--[[ L["Please whisper bid value to me."] = ""--]] 
--[[Translation missing --]]
--[[ L["Please whisper number to me: "] = ""--]] 
L["Protect Time (sec)"] = "Время защиты (сек)"
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "Отображать значения GP во всплывающих подсказках к предметам. Предметы, необходимые для заданий, а также токены, которые можно обменять на вещи, также будут иметь предлагаемые значения GP. "
L["Quality threshold"] = "Порог качества"
--[[Translation missing --]]
--[[ L["Recommend value before next tier:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recommend value in current tier:"] = ""--]] 
L["Recurring"] = "Повторяющийся"
L["Recurring awards resume"] = "Продолжить начисление EP"
L["Recurring awards start"] = "Начать начисление EP"
L["Recurring awards stop"] = "Прекратить начисление EP"
L["Redo"] = "Повторить"
L["Re-scale all main toons' GP to current tier?"] = "Пересчитать GP всех основных персонажей для текущего ТИРа?"
L["Rescale GP"] = "Пересчет GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "Пересчет GP всех членов гильдии. Это уменьшит GP всех основных персонажей до актуального значения. Использовать с осторожностью!"
L["Reset all main toons' EP and GP to 0?"] = "Сбросить значения EP и GP до 0 для всех основных персонажей?"
L["Reset all main toons' GP to 0?"] = "Сбросить GP всех основных чаров на 0?"
L["Reset EPGP"] = "Сброс EPGP"
--[[Translation missing --]]
--[[ L["Reset GP"] = ""--]] 
L["Reset only GP"] = "Сбросить только GP"
--[[Translation missing --]]
--[[ L["Reset result when announce and start a bid/need/roll."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reset when announce a bid"] = ""--]] 
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "Сброс EP и GP для всех членов гильдии. Это установит все значения EP и GP на 0. Использовать осторожно!"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "Сброс GP (но не EP) всех членов гильдии. Это установит GP всех основных чаров на 0. Использовать с осторожностью!"
L["Resume recurring award (%s) %d EP/%s"] = "Продолжить начисление EP (%s) %d EP/%s"
L["Select all"] = "Выбрать все"
--[[Translation missing --]]
--[[ L["Sending: %d / %d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Set gear points (GP multiplier). Each slot could set up to 3 points. Each points has a custom comment."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets loot tracking threshold, to disable the adding on loot below this threshold quality."] = ""--]] 
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "Порог отслеживания добычи. Всплывающее окно не появляется при получении предмета ниже этого порогового качества."
--[[Translation missing --]]
--[[ L["Sets the announce medium EPGP will use to announce distribution actions."] = ""--]] 
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "Установить канал для объявлений, который EPGP будет использовать для объявлений о своих действиях"
L["Sets the custom announce channel name used to announce EPGP actions."] = "Назначить название нестандартного канала для объявления о действиях EPGP."
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
L["Show everyone"] = "Показать всех"
--[[Translation missing --]]
--[[ L["Show item level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slots"] = ""--]] 
L["Some english word"] = "Какое-то английское слово"
L["Some english word that doesn't exist"] = "Какое-то несуществующее английское слово"
L["Standby"] = "Ожидание"
--[[Translation missing --]]
--[[ L["Standby for others is NOT allowed. Whisper 'epgp standby' instead."] = ""--]] 
L["Standby whispers in raid"] = "Шепот резерва в рейд"
L["Start recurring award (%s) %d EP/%s"] = "Начать периодическое начисление (%s) %d EP/%s"
L["Stop recurring award"] = "Остановить периодическое начисление"
L["string1"] = true
--[[Translation missing --]]
--[[ L["Sync finished."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync settings to guild ranks:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Temple of Ahn'Qiraj"] = ""--]] 
L["The imported data is invalid"] = "Импортируемые данные неверны"
--[[Translation missing --]]
--[[ L["The standby list will be cleared x seconds after each reward."] = ""--]] 
--[[Translation missing --]]
--[[ L["Time protect"] = ""--]] 
L["To export the current standings, copy the text below and post it to: %s"] = "Для экспорта текущих данных скопируйте текст, расположенный ниже, и вставьте его в: %s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "Для восстановления предыдущей версии данных, скопируйте и вставьте текст отсюда: %s"
L["Tooltip"] = "Подсказка"
--[[Translation missing --]]
--[[ L["Track loot items"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust list (seperate with ',')"] = ""--]] 
L["Undo"] = "Отменить"
L["unknown argument"] = "неизвестный аргумент"
L["unknown selection"] = "неизвестный выбор"
--[[Translation missing --]]
--[[ L["Use custom global configuration"] = ""--]] 
L["Using %s for boss kill tracking"] = "Используется %s для отслеживания убийства боссов"
L["Value"] = "Значение"
--[[Translation missing --]]
--[[ L["Web & WeChat Mini Program"] = ""--]] 
--[[Translation missing --]]
--[[ L["When a new tier comes, you may like to increase [standard_ilvl]. That can avoid large gear points. If you do that, a GP rescaling is recommended. Everyone's GP will be changed."] = ""--]] 
--[[Translation missing --]]
--[[ L["WHETHER_TO_START_BOSS_AUTO_REWARD"] = ""--]] 
L["Whisper"] = "Шепот"
--[[Translation missing --]]
--[[ L["wipe"] = ""--]] 
L["Wipe awards"] = "Начисление за вайпы"
L["Wiped on %s. Award EP?"] = "Вайп на %s. Начислить EP?"
--[[Translation missing --]]
--[[ L["Write into Guild Info"] = ""--]] 
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "Вы можете сохранить рейтинг epgp и полученный лут в Интернете: http://www.epgpweb.com"
--[[Translation missing --]]
--[[ L["You may need to deselect \"Show only members\" on EPGP web after uploading."] = ""--]] 
--[[Translation missing --]]
--[[ L["You should probably: increase standard_ilvl, reset or rescale GP."] = ""--]] 

