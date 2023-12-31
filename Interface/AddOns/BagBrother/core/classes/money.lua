--[[
	moneyFrame.lua
		Displays the player money stack
--]]

local ADDON, Addon = ...
local L = LibStub('AceLocale-3.0'):GetLocale(ADDON)
local MoneyFrame = Addon.Tipped:NewClass('MoneyFrame', 'Frame', 'SmallMoneyFrameTemplate', true)
MoneyFrame.Type = 'PLAYER'


--[[ Construct ]]--

function MoneyFrame:New(parent)
	local f = self:Super(MoneyFrame):New(parent)
	f:RegisterEvents()
	return f
end

function MoneyFrame:Construct()
	local f = self:Super(MoneyFrame):Construct()
	f.trialErrorButton:SetPoint('LEFT', -14, 0)
	f:SetScript('OnShow', f.RegisterEvents)
	f:SetScript('OnHide', f.UnregisterAll)
	f:SetScript('OnEvent', nil)
	f:SetHeight(24)

	local overlay = CreateFrame('Button', nil, f)
	overlay:SetScript('OnClick', function(_,...) f:OnClick(...) end)
	overlay:SetScript('OnEnter', function() f:OnEnter() end)
	overlay:SetScript('OnLeave', function() f:OnLeave() end)
	overlay:SetFrameLevel(f:GetFrameLevel() + 4)
	overlay:RegisterForClicks('anyUp')
	overlay:SetAllPoints()

	f.info = MoneyTypeInfo[f.Type]
	f.overlay = overlay
	return f
end

function MoneyFrame:RegisterEvents()
	self:RegisterFrameSignal('OWNER_CHANGED', 'Update')
	self:RegisterEvent('PLAYER_MONEY', 'Update')
	self:Update()
end

function MoneyFrame:Update()
	local money = self:GetMoney()
	MoneyFrame_Update(self:GetName(), money, money == 0)
end


--[[ Interaction ]]--

function MoneyFrame:OnClick()
	if self:IsCached() then
		return
	end

	local name = self:GetName()
	if MouseIsOver(_G[name .. 'GoldButton']) then
		OpenCoinPickupFrame(COPPER_PER_GOLD, MoneyTypeInfo[self.moneyType].UpdateFunc(self), self)
		self.hasPickup = 1
	elseif MouseIsOver(_G[name .. 'SilverButton']) then
		OpenCoinPickupFrame(COPPER_PER_SILVER, MoneyTypeInfo[self.moneyType].UpdateFunc(self), self)
		self.hasPickup = 1
	elseif MouseIsOver(_G[name .. 'CopperButton']) then
		OpenCoinPickupFrame(1, MoneyTypeInfo[self.moneyType].UpdateFunc(self), self)
		self.hasPickup = 1
	end

	self:OnLeave()
end

function MoneyFrame:OnEnter()
	-- Total
	local total = 0
	for i, owner in Addon.Owners:Iterate() do
		total = total + ((not owner.isguild and owner:GetMoney()) or 0)
	end

	GameTooltip:SetOwner(self:GetTipAnchor())
	GameTooltip:AddDoubleLine(L.Total, GetMoneyString(total, true), nil,nil,nil, 1,1,1)
	GameTooltip:AddLine(' ')

	-- Each owner
	for i, owner in Addon.Owners:Iterate() do
		local money = not owner.isguild and owner:GetMoney()
		if money then
			local coins = GetMoneyString(money, true)
			local icon = owner:GetIconMarkup(12,0,0)
			local color = owner:GetColor(owner)

			GameTooltip:AddDoubleLine(icon .. ' ' .. owner.name, coins, color.r, color.g, color.b, 1,1,1)
		end
	end

	GameTooltip:Show()
end


--[[ API ]]--

function MoneyFrame:GetMoney()
	return self:GetOwner():GetMoney() or 0
end

function MoneyFrame:GetCoins(money)
	local gold = floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD))
	local silver = floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER)
	local copper = money % COPPER_PER_SILVER
	return gold, silver, copper
end
