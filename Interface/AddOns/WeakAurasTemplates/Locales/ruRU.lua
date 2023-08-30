if not WeakAuras.IsLibsOK() then return end

if (GAME_LOCALE or GetLocale()) ~= "ruRU" then
  return
end

local L = WeakAuras.L

-- WeakAuras/Templates
	--[[Translation missing --]]
	L["< 4 stacks"] = "< 4 stacks"
	--[[Translation missing --]]
	L["5 stacks"] = "5 stacks"
	L["Abilities"] = "Способности"
	L["Add Triggers"] = "Добавить триггеры"
	L["Always Active"] = "Всегда активный триггер"
	L["Always Show"] = "Показывать всегда"
	L["Always show the aura, highlight it if debuffed."] = "Всегда показывает индикацию; выделяет ее, если на цели есть дебафф."
	L["Always show the aura, turns grey if on cooldown."] = "Всегда показывает индикацию; становится серой, если предмет восстанавливается."
	L["Always show the aura, turns grey if the debuff not active."] = "Всегда показывает индикацию; становится серой, если на цели нет дебаффа."
	L["Always shows highlights if enchant missing."] = "Всегда выделять, если отсутствует зачарование."
	L["Always shows the aura, grey if buff not active."] = "Всегда показывает индикацию; становится серой, если на цели нет баффа."
	L["Always shows the aura, highlight it if buffed."] = "Всегда показывает индикацию; выделяет ее, если на цели есть бафф."
	L["Always shows the aura, highlight when active, turns blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда активна; становится синим при нехватке ресурсов."
	L["Always shows the aura, highlight while proc is active, blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда сработала; становится синим при нехватке ресурсов."
	L["Always shows the aura, highlight while proc is active, blue when not usable."] = "Всегда показывает индикацию; выделяет ее, когда сработала; синий, когда нельзя использовать."
	L["Always shows the aura, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Всегда показывает индикацию; выделяет ее, когда сработала; становится красным, когда вне зоны действия, синим при нехватке ресурсов."
	L["Always shows the aura, turns blue on insufficient resources."] = "Всегда показывает ауру, становится сними при недостаточных ресурсах."
	L["Always shows the aura, turns blue when not usable."] = "Всегда показывает ауру, становится синим, когда нельзя использовать."
	L["Always shows the aura, turns grey if on cooldown."] = "Всегда показывает ауру, становится серым, если на перезарядке."
	L["Always shows the aura, turns grey if the ability is not usable and red when out of range."] = "Всегда показывает ауру, становится серым, если способность нельзя использовать, и красным, когда находится вне зоны действия."
	L["Always shows the aura, turns grey if the ability is not usable."] = "Всегда показывает ауру, становится серым, если способность нельзя использовать."
	L["Always shows the aura, turns red when out of range, blue on insufficient resources."] = "Всегда показывает ауру, становится красным вне зоны действия, синим при недостаточных ресурсах."
	L["Always shows the aura, turns red when out of range."] = "Всегда показывает индикацию; становится красной, если цель вне зоны действия."
	L["Always shows the aura."] = "Всегда показывать индикацию."
	L["Back"] = "Назад"
	L["Basic Show On Cooldown"] = "Показать восстановление"
	L["Basic Show On Ready"] = "Основной: Показать по готовности"
	L["Bloodlust/Heroism"] = "Жажда крови / Героизм"
	L["buff"] = "(бафф)"
	L["Buffs"] = "Баффы"
	L["Cancel"] = "Отмена"
	L["Cast"] = "Применение заклинания"
	L["Charge and Buff Tracking"] = "Отслеживание заряда и баффов"
	L["Charge and Debuff Tracking"] = "Отслеживание зарядов и дебаффов"
	L["Charge and Duration Tracking"] = "Отслеживание заряда и продолжительности"
	L["Charge Tracking"] = "Отслеживание заряда"
	L["cooldown"] = "(восстановление)"
	L["Cooldown Tracking"] = "Отслеживание восстановления"
	L["Cooldowns"] = "Перезарядки"
	L["Create Auras"] = "Создать"
	L["debuff"] = "(дебафф)"
	L["Debuffs"] = "Дебаффы"
	L["General"] = "Общее"
	L["Health"] = "Здоровье"
	L["Highlight while action is queued."] = "Выделяет индикацию, если действие в очереди."
	L["Highlight while active, red when out of range."] = "Выделяет индикацию, если активно; становится красной, если цель вне зоны действия."
	L["Highlight while active."] = "Выделяет индикацию, если активно."
	L["Highlight while buffed, red when out of range."] = "Выделяет индикацию, если бафф активен; становится красной, если цель вне зоны действия."
	L["Highlight while buffed."] = "Выделяет индикацию, когда на цели есть бафф."
	L["Highlight while debuffed, red when out of range."] = "Выделяет индикацию, если дебафф активен; становится красной, если цель вне зоны действия."
	L["Highlight while debuffed."] = "Выделяет индикацию, когда на цели есть дебафф."
	L["Highlight while spell is active."] = "Выделяет индикацию, если заклинание активно."
	L["Hold CTRL to create multiple auras at once"] = "Удерживайте Ctrl для создания нескольких индикаций"
	L["Keeps existing triggers intact"] = "Сохраняет существующие триггеры нетронутыми"
	--[[Translation missing --]]
	L["Max 3"] = "Max 3"
	--[[Translation missing --]]
	L["Max 4"] = "Max 4"
	L["Next"] = "Далее"
	L["Only show the aura if the target has the debuff."] = "Показывает индикацию, только когда на цели есть дебафф."
	L["Only show the aura when the item is on cooldown."] = "Показывает индикацию, только когда предмет восстанавливается."
	L["Only shows if the weapon is enchanted."] = "Показывать индикацию, если на оружии есть чары."
	L["Only shows if the weapon is not enchanted."] = "Показывать индикацию, если на оружии нет чар."
	L["Only shows the aura if the target has the buff."] = "Показывает индикацию, только когда на цели есть бафф."
	L["Only shows the aura when the ability is on cooldown."] = "Показывает индикацию, только когда способность восстанавливается."
	L["Only shows the aura when the ability is ready to use."] = "Показывать индикацию только если способность готова к использованию."
	L["Other cooldown"] = "(восстановление, остальные)"
	L["Pet alive"] = "Питомец жив"
	L["Pet Behavior"] = "Поведение питомца"
	L["PvP Talents"] = "PvP таланты"
	L["Replace all existing triggers"] = "Заменяет все существующие триггеры"
	L["Replace Triggers"] = "Заменить триггеры"
	L["Resources"] = "Ресурсы"
	L["Resources and Shapeshift Form"] = "Ресурсы и облики друида"
	L["Rogue cooldown"] = "(восстановление, разбойник)"
	L["Runes"] = "Руны"
	L["Shapeshift Form"] = "Облик друида"
	L["Show Always, Glow on Missing"] = "Показывать всегда, сверкать при отсутствии"
	L["Show Charges and Check Usable"] = "Показать заряды и проверить доступность"
	L["Show Charges with Proc Tracking"] = "Показать заряды с отслеживанием срабатывания"
	L["Show Charges with Range Tracking"] = "Показать заряды с отслеживанием дистанции"
	L["Show Charges with Usable Check"] = "Показать заряды с проверкой доступности"
	L["Show Cooldown and Action Queued"] = "Показать восстановление и очередь действий"
	L["Show Cooldown and Buff"] = "Показать восстановление и бафф"
	L["Show Cooldown and Buff and Check for Target"] = "Показать восстановление, бафф и проверить цель"
	L["Show Cooldown and Buff and Check Usable"] = "Показать восстановление, бафф и проверить доступность"
	L["Show Cooldown and Check for Target"] = "Показать восстановление и проверить цель"
	L["Show Cooldown and Check for Target & Proc Tracking"] = "Показать восстановление и проверить цель, отслеживать срабатывание"
	L["Show Cooldown and Check Usable"] = "Показать восстановление и проверить доступность"
	L["Show Cooldown and Check Usable & Target"] = "Показать восстановление и проверить доступность, цель"
	L["Show Cooldown and Check Usable, Proc Tracking"] = "Показать восстановление и проверить доступность, отслеживать срабатывание"
	L["Show Cooldown and Check Usable, Target & Proc Tracking"] = "Показать восстановление и проверить доступность, цель, отслеживать срабатывание"
	L["Show Cooldown and Debuff"] = "Показать восстановление и дебафф"
	L["Show Cooldown and Debuff and Check for Target"] = "Показать восстановление, дебафф и проверить цель"
	L["Show Cooldown and Duration"] = "Показать восстановление и длительность"
	L["Show Cooldown and Duration and Check for Target"] = "Показать восстановление, длительность и проверить цель"
	L["Show Cooldown and Duration and Check Usable"] = "Показать восстановление, длительность и проверить доступность"
	L["Show Cooldown and Proc Tracking"] = "Показать восстановление и отслеживание срабатывания"
	L["Show Cooldown and Totem Information"] = "Показать восстановление и информацио о тотеме"
	L["Show if Enchant Missing"] = "Показать при отсутствии чар"
	L["Show on Ready"] = "Показывать готовность"
	L["Show Only if Buffed"] = "Показать бафф"
	L["Show Only if Debuffed"] = "Показать дебафф"
	L["Show Only if Enchanted"] = "Показать только если зачаровано"
	L["Show Only if on Cooldown"] = "Показать восстановление"
	L["Show Totem and Charge Information"] = "Показать информацию о тотеме и заряде"
	L["Stance"] = "Стойка"
	L["Track the charge and proc, highlight while proc is active, turns red when out of range, blue on insufficient resources."] = "Отслеживайте заряд и срабатывание, подсвечивайте, пока срабатывание активно, становится красным, когда вне зоны действия, синим, когда недостаточно ресурсов."
	L["Tracks the charge and the buff, highlight while the buff is active, blue on insufficient resources."] = "Отслеживает заряд и бафф, подсвечивает, пока бафф активен, синим - недостаточно ресурсов."
	L["Tracks the charge and the debuff, highlight while the debuff is active, blue on insufficient resources."] = "Отслеживает заряд и дебафф, подсвечивает, пока дебафф активен, синим - недостаточно ресурсов."
	L["Tracks the charge and the duration of spell, highlight while the spell is active, blue on insufficient resources."] = "Отслеживает заряд и продолжительность заклинания, подсвечивает, пока заклинание активно, синим - недостаточно ресурсов."
	L["Unknown Item"] = "Неизвестный предмет"
	L["Unknown Spell"] = "Неизвестное заклинание"
	L["Warrior cooldown"] = "(восстановление, воин)"

