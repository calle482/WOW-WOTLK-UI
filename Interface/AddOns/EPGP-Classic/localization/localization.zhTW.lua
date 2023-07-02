local L = LibStub("AceLocale-3.0"):NewLocale("EPGP", "zhTW")
if not L then return end

L["%+d EP (%s) to %s"] = "%+d EP (%s) 給 %s"
L["%+d GP (%s) to %s"] = "%+d GP (%s) 給 %s"
L["'%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' - 要求 'on' 或 'off'，或者不加參數來切換。"
L["'%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' - 要求 'on'，或'off'或'default'，或不加參數來切換。"
L["'%s' - expected 'RRGGBB' or 'r g b'."] = "'%s' - 要求 'RRGGBB' 或 'r g b'。"
L["'%s' - expected 'RRGGBBAA' or 'r g b a'."] = "'%s' - 要求 'RRGGBBAA' 或 'r g b a'。"
L["'%s' - Invalid Keybinding."] = "'%s' - 無效的快捷鍵綁定。"
L["'%s' - values must all be either in the range 0..1 or 0..255."] = "'%s' - 數值必須是在0..1或0..255的範圍內。"
L["'%s' - values must all be either in the range 0-1 or 0-255."] = "'%s' - 數值必須在0-1或0-255的範圍內。"
L["%s %s"] = "%s%s"
L["'%s' '%s' - expected 'on' or 'off', or no argument to toggle."] = "'%s' '%s' - 要求 'on' 或 'off'，或不加參數來切換。"
L["'%s' '%s' - expected 'on', 'off' or 'default', or no argument to toggle."] = "'%s' '%s' - 要求 'on'，'off' 或 'default'，或不加參數來切換。"
L["%s is added to the award list"] = "%s 已經被加入獎勵列表"
L["%s is already in the award list"] = "%s 已經存在於獎勵列表之內"
L["%s is dead. Award EP?"] = "%s 已經陣亡，仍然給予EP獎勵?"
L["%s is not eligible for EP awards"] = "%s 不符合給予EP獎勵的資格"
--[[Translation missing --]]
--[[ L["%s is not in the award list now. Whisper me 'epgp standby' to enlist again."] = ""--]] 
--[[Translation missing --]]
--[[ L["%s is now removed from the award list. Whisper me 'epgp standby' to enlist again."] = ""--]] 
L["%s to %s"] = "%s 給 %s"
L["%s, %s, %s"] = "%s、%s、%s"
--[[Translation missing --]]
--[[ L["%s, %s, %s, %s"] = ""--]] 
L["%s: %+d EP (%s) to %s"] = "%s: %+d EP (%s) 給 %s"
L["%s: %+d GP (%s) to %s"] = "%s: %+d GP (%s) 給 %s"
L["%s: %s to %s"] = "%s: %s 給 %s"
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
L["A member is awarded EP"] = "已獎勵一位隊員EP"
L["A member is credited GP"] = "已記入一位隊員GP"
--[[Translation missing --]]
--[[ L["A new tier is here!"] = ""--]] 
L["A new tier is here!  You should probably reset or rescale GP (Interface -> Options -> AddOns -> EPGP)!"] = "這是一個新層級！你應該重置或重新調整GP(介面 -> 選項 -> 插件 -> EPGP)！"
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
L["Alts"] = "小號(分身)"
L["An item was disenchanted or deposited into the guild bank"] = "物品已被分解或存放入公會銀行"
L["Announce"] = "訊息公佈"
--[[Translation missing --]]
--[[ L["Announce EP/GP/PR when a member need/greed/bid"] = ""--]] 
L["Announce epic loot from corpses"] = "從屍體宣佈史詩戰利品"
L["Announce medium"] = "公佈訊息媒介"
--[[Translation missing --]]
--[[ L["Announce need message"] = ""--]] 
L["Announce when someone in your raid derps a bonus roll"] = "當團隊中的某人使用一個額外拾取的時候通知"
L["Announce when someone in your raid wins something good with bonus roll"] = "當團隊中的某人贏得一個額外拾取的時候通知"
L["Announce when:"] = "發佈公告當："
L["Announcement of EPGP actions"] = "EPGP異動公布"
L["Announces EPGP actions to the specified medium."] = "於指定的頻道發布貢獻裝備點數異動狀況"
--[[Translation missing --]]
--[[ L["Auto popup"] = ""--]] 
L["Automatic boss tracking"] = "自動BOSS擊殺記錄"
L["Automatic boss tracking by means of a popup to mass award EP to the raid and standby when a boss is killed."] = "使用擊殺首領時彈出之訊息來自動追蹤首領擊殺，自動作全團隊EP獎勵，首領擊殺後自動回復到待命狀態。"
L["Automatic handling of the standby list through whispers when in raid. When this is enabled, the standby list is cleared after each reward."] = "於團隊中使用密語自動處理待命清單.當此選項被啟動,每項待命清單將在每次獎勵後清除"
L["Automatic loot tracking"] = "自動追蹤掉落物"
L["Automatic loot tracking by means of a popup to assign GP to the toon that received loot. This option only has effect if you are in a raid and you are either the Raid Leader or the Master Looter."] = "使用彈出之訊息來自動追蹤掉落物，自動紀錄獲得該裝掉落物之角色的GP值。.此選項僅能在你身處團隊並為隊長或裝被分配者時可作用."
L["Award EP"] = "EP獎勵"
L["Awards for wipes on bosses. Requires DBM, DXE, or BigWigs"] = "對boss戰滅團給予獎勵 需要安裝DBM,DXE, 或BigWigs"
L["Base GP should be a positive number (>= 0)"] = "Base GP 必須為正數（ >= 0）"
--[[Translation missing --]]
--[[ L["Bid medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["Blackwing Lair"] = ""--]] 
L["Bonus roll for %s (%s left): got %s (ilvl %d)"] = "額外拾取在 %s (剩下 %s)：獲得 %s (裝等 %d)"
L["Bonus roll for %s (%s left): got gold"] = "額外拾取在 %s (剩下 %s)：獲得黃金"
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
L["Credit GP"] = "獎勵裝備點數"
L["Credit GP to %s"] = "獎勵裝備點數予%s"
L["Custom announce channel name"] = "設定公佈訊息的頻道"
--[[Translation missing --]]
--[[ L["Custom items list has been reseted."] = ""--]] 
L["Decay"] = "時間性遞減"
--[[Translation missing --]]
--[[ L["Decay BASE_GP should be 0 or 1"] = ""--]] 
L["Decay EP and GP by %d%%?"] = "將EP與GP遞減 %d%%?"
L["Decay of EP/GP by %d%%"] = "EP/GP 遞減為 %d%%"
L["Decay Percent should be a number between 0 and 100"] = "遞減百分比必須介於0與100之間"
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_BASE_GP_TEXT"] = ""--]] 
--[[Translation missing --]]
--[[ L["DECAY_P_DESC"] = ""--]] 
L["default"] = "預設"
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["DIST_ANNOUNCE_PR_FMT_NAME"] = ""--]] 
--[[Translation missing --]]
--[[ L["Distribution"] = ""--]] 
L["Do you want to resume recurring award (%s) %d EP/%s?"] = "請問你是否欲恢復自動獎勵(%s) %d 貢獻點數/%s?"
L["EP Reason"] = "貢獻點數獎勵來源"
L["EP/GP are reset"] = "貢獻點數/裝備點數 已經被重設"
--[[Translation missing --]]
--[[ L["EP/GP/PR announce medium"] = ""--]] 
L["EPGP decay"] = "EPGP衰減"
L["EPGP is an in game, relational loot distribution system"] = "EPGP 為一遊戲內,掉落寶物關聯分配系統"
L["EPGP is using Officer Notes for data storage. Do you really want to edit the Officer Note by hand?"] = "EPGP 使用公會幹部註解作為儲存方式。您確定要手動編輯公會幹部註解?"
L["EPGP reset"] = "重置EPGP"
--[[Translation missing --]]
--[[ L["Equation"] = ""--]] 
L["expected number"] = "要求數字"
L["Export"] = "匯出"
--[[Translation missing --]]
--[[ L["Export Detail"] = ""--]] 
--[[Translation missing --]]
--[[ L["EXPORT_DETAIL_DESC"] = ""--]] 
L["Extras Percent should be a number between 0 and 100"] = "額外百分比必須為介於0到100間之數字"
--[[Translation missing --]]
--[[ L["EXTRAS_P_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Gear Points"] = ""--]] 
--[[Translation missing --]]
--[[ L["Global configuration"] = ""--]] 
L["GP (not EP) is reset"] = "GP(非EP)已經重設"
L["GP (not ep) reset"] = "GP(非EP)重設"
L["GP is rescaled for the new tier"] = "此新等級的GP已經重新調整"
L["GP on tooltips"] = "顯示裝備點數於工具提示"
L["GP Reason"] = "裝備點數獎勵來源"
L["GP rescale for new tier"] = "新層級的GP重新調整"
--[[Translation missing --]]
--[[ L["Guild info has been updated."] = ""--]] 
L["Guild or Raid are awarded EP"] = "公會或團隊將被獎勵貢獻點數"
L["Hint: You can open these options by typing /epgp config"] = "提示: 您可以鍵入 /epgp 開啟並調整這些選項"
--[[Translation missing --]]
--[[ L["Icon"] = ""--]] 
L["Idle"] = "閒置"
L["If you want to be on the award list but you are not in the raid, you need to whisper me: 'epgp standby' or 'epgp standby <name>' where <name> is the toon that should receive awards"] = "如果您想加入替補序列但是不在團隊中的時候，您必須對我密語:'epgp standby' 或 'epgp standby <ID名稱>'，<ID名稱>即為想要拾取該項寶物的人的ID名稱。"
L["Ignoring EP change for unknown member %s"] = "忽略未知成員%s之貢獻點數異動"
L["Ignoring GP change for unknown member %s"] = "忽略未知成員%s之裝備點數異動"
L["Import"] = "匯入"
L["Importing data snapshot taken at: %s"] = "匯入於 %s 快照所得之資料"
L["invalid input"] = "無效的輸入"
L["Invalid officer note [%s] for %s (ignored)"] = "%s 中之 [%s] 為不合規範的公會幹部註解 (已被忽略)"
--[[Translation missing --]]
--[[ L["kill"] = ""--]] 
--[[Translation missing --]]
--[[ L["Legendary Scale"] = ""--]] 
L["List errors"] = "列出錯誤"
L["Lists errors during officer note parsing to the default chat frame. Examples are members with an invalid officer note."] = "在編讀公會幹部註解的時候於目前的聊天視窗中列出錯誤。譬如有公會成員有不能被編讀之公會幹部註解。"
--[[Translation missing --]]
--[[ L["Logs"] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is almost full (%d/%d)."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list is full (%d). %s will not be added into list."] = ""--]] 
--[[Translation missing --]]
--[[ L["Loot list: "] = ""--]] 
L["Loot tracking threshold"] = "掉落物品追蹤品質等級"
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
L["Main"] = "主要"
L["Make sure you are the only person changing EP and GP. If you have multiple people changing EP and GP at the same time, for example one awarding EP and another crediting GP, you *are* going to have data loss."] = "請確定你是唯一會更動EP與GP的使用者. 如果有多位使用者同時更動EP與GP(例如，一位使用者正在獎勵EP，而另一位使用者在獎勵GP)，有可能會導致資料流失。"
--[[Translation missing --]]
--[[ L["Mass Adjust GP"] = ""--]] 
L["Mass EP Award"] = "整體EP獎勵"
--[[Translation missing --]]
--[[ L["MASS_ADJUST_GP_DESC"] = ""--]] 
--[[Translation missing --]]
--[[ L["Message announced when you start a need/greed bid."] = ""--]] 
L["Min EP should be a positive number (>= 0)"] = "Min EP 值必須為正數（ >= 0）"
--[[Translation missing --]]
--[[ L["Multiplier %d"] = ""--]] 
L["must be equal to or higher than %s"] = "必須等於或高於％s"
L["must be equal to or lower than %s"] = "必須等於或低於％s"
--[[Translation missing --]]
--[[ L["Naxxramas"] = ""--]] 
--[[Translation missing --]]
--[[ L["Need/greed medium"] = ""--]] 
--[[Translation missing --]]
--[[ L["NEW_VERSION_INTRO_1_5_0"] = ""--]] 
L["Next award in "] = "下一個獎勵"
--[[Translation missing --]]
--[[ L["Non-hunter"] = ""--]] 
--[[Translation missing --]]
--[[ L["Non-tank"] = ""--]] 
L["off"] = "關閉"
L["on"] = "開啟"
L["Only display GP values for items at or above this quality."] = "只顯示稀有等級同等或以上之物品的GP值"
L["Open the configuration options"] = "開啟組態選項"
L["Open the debug window"] = "開啟除錯視窗"
L["Outsiders should be 0 or 1"] = "外人應為0或1"
--[[Translation missing --]]
--[[ L["OUTSIDERS_DESC"] = ""--]] 
L["Paste import data here"] = "在此貼上欲匯入的資料"
L["Personal Action Log"] = "個人操作記錄"
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
L["Provide a proposed GP value of armor on tooltips. Quest items or tokens that can be traded for armor will also have a proposed GP value."] = "在防具的工具提示上提供裝備點數之建議.任務道具與可兌換裝備之兌換章同樣會顯示建議的裝備點數."
L["Quality threshold"] = "品質等級"
--[[Translation missing --]]
--[[ L["Recommend value before next tier:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Recommend value in current tier:"] = ""--]] 
L["Recurring"] = "循環獎勵"
L["Recurring awards resume"] = "回復循環獎勵"
L["Recurring awards start"] = "開始循環獎勵"
L["Recurring awards stop"] = "停止循環獎勵"
L["Redo"] = "重複動作"
L["Re-scale all main toons' GP to current tier?"] = "重新調整所有主要角色的GP到當前層級嗎？"
L["Rescale GP"] = "重新調整GP"
L["Rescale GP of all members of the guild. This will reduce all main toons' GP by a tier worth of value. Use with care!"] = "重新調整此公會所有成員的GP。這會減少所有主要人物此層級的GP值，請慎用！"
L["Reset all main toons' EP and GP to 0?"] = "將所有主要人物之 EP 與 GP 設為 0"
L["Reset all main toons' GP to 0?"] = "重設所有主要人物的GP為0？"
L["Reset EPGP"] = "EPGP重設"
--[[Translation missing --]]
--[[ L["Reset GP"] = ""--]] 
L["Reset only GP"] = "只有重設GP"
--[[Translation missing --]]
--[[ L["Reset result when announce and start a bid/need/roll."] = ""--]] 
--[[Translation missing --]]
--[[ L["Reset when announce a bid"] = ""--]] 
L["Resets EP and GP of all members of the guild. This will set all main toons' EP and GP to 0. Use with care!"] = "將全公會成員之 EP 與 GP 值重設，此動作會將所有主要人物之 EP 與 GP 設為 0，請小心使用。"
L["Resets GP (not EP!) of all members of the guild. This will set all main toons' GP to 0. Use with care!"] = "重設公會所有成員的GP(非EP!)。這會設置所有主要人物的GP為0。請慎用！"
L["Resume recurring award (%s) %d EP/%s"] = "恢復自動獎勵(%s) %d 貢獻點數/%s"
--[[Translation missing --]]
--[[ L["Select all"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sending: %d / %d"] = ""--]] 
--[[Translation missing --]]
--[[ L["Set gear points (GP multiplier). Each slot could set up to 3 points. Each points has a custom comment."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sets loot tracking threshold, to disable the adding on loot below this threshold quality."] = ""--]] 
L["Sets loot tracking threshold, to disable the popup on loot below this threshold quality."] = "設定掉落物追蹤稀有等級後,等級以下品質之物品將不會出現詢問視窗."
--[[Translation missing --]]
--[[ L["Sets the announce medium EPGP will use to announce distribution actions."] = ""--]] 
L["Sets the announce medium EPGP will use to announce EPGP actions."] = "設定EPGP異動時之訊息公佈媒介"
L["Sets the custom announce channel name used to announce EPGP actions."] = "設定EPGP異動時之自定頻道名稱"
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
L["Show everyone"] = "顯示所有人"
--[[Translation missing --]]
--[[ L["Show item level"] = ""--]] 
--[[Translation missing --]]
--[[ L["Slots"] = ""--]] 
L["Some english word"] = "一些英文單字"
L["Some english word that doesn't exist"] = "一些不存在的英文單字"
L["Standby"] = "待命"
--[[Translation missing --]]
--[[ L["Standby for others is NOT allowed. Whisper 'epgp standby' instead."] = ""--]] 
L["Standby whispers in raid"] = "團隊中密語待命"
L["Start recurring award (%s) %d EP/%s"] = "開始循環獎勵 (%s) %d EP/%s"
L["Stop recurring award"] = "停止循環獎勵"
L["string1"] = "字串1"
--[[Translation missing --]]
--[[ L["Sync finished."] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync settings to guild ranks:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Sync to:"] = ""--]] 
--[[Translation missing --]]
--[[ L["Temple of Ahn'Qiraj"] = ""--]] 
L["The imported data is invalid"] = "不符規定之匯入資料"
--[[Translation missing --]]
--[[ L["The standby list will be cleared x seconds after each reward."] = ""--]] 
--[[Translation missing --]]
--[[ L["Time protect"] = ""--]] 
L["To export the current standings, copy the text below and post it to: %s"] = "欲匯出目前排序,請複製以下文字並貼至:%s"
L["To restore to an earlier version of the standings, copy and paste the text from: %s"] = "欲回復較早時間點之排序,從以下位置複製文字並貼上:%s"
L["Tooltip"] = "工具提示"
--[[Translation missing --]]
--[[ L["Track loot items"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust"] = ""--]] 
--[[Translation missing --]]
--[[ L["Trust list (seperate with ',')"] = ""--]] 
L["Undo"] = "取消"
L["unknown argument"] = "未知參數"
L["unknown selection"] = "未知選擇"
--[[Translation missing --]]
--[[ L["Use custom global configuration"] = ""--]] 
L["Using %s for boss kill tracking"] = "使用 %s 作為擊殺首領的依據"
L["Value"] = "值"
--[[Translation missing --]]
--[[ L["Web & WeChat Mini Program"] = ""--]] 
--[[Translation missing --]]
--[[ L["When a new tier comes, you may like to increase [standard_ilvl]. That can avoid large gear points. If you do that, a GP rescaling is recommended. Everyone's GP will be changed."] = ""--]] 
--[[Translation missing --]]
--[[ L["WHETHER_TO_START_BOSS_AUTO_REWARD"] = ""--]] 
L["Whisper"] = "密語"
--[[Translation missing --]]
--[[ L["wipe"] = ""--]] 
L["Wipe awards"] = "滅團獎勵"
L["Wiped on %s. Award EP?"] = "滅團於%s. 獎勵EP?"
--[[Translation missing --]]
--[[ L["Write into Guild Info"] = ""--]] 
L["You can now check your epgp standings and loot on the web: http://www.epgpweb.com"] = "你現在可以在以下的位置查詢epgp積分和寶物: http://www.epgpweb.com "
--[[Translation missing --]]
--[[ L["You may need to deselect \"Show only members\" on EPGP web after uploading."] = ""--]] 
--[[Translation missing --]]
--[[ L["You should probably: increase standard_ilvl, reset or rescale GP."] = ""--]] 

