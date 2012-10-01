local FONT = [=[Interface\AddOns\pBindings\semplice.ttf]=]
local TEXTURE = [=[Interface\ChatFrame\ChatFrameBackground]=]
local BACKDROP = {
	bgFile = TEXTURE, insets = {top = -1, bottom = -1, left = -1, right = -1}
}

local PetBattle = CreateFrame('Frame', nil, UIParent, 'SecureHandlerStateTemplate')
RegisterStateDriver(PetBattle, 'visibility', '[petbattle] show; hide')
PetBattle:SetPoint('BOTTOM', UIParent, -75, 90)

local Hider = CreateFrame('Frame')
Hider:Hide()

local function UpdatePower(self)
	local active = C_PetBattles.GetActivePet(LE_BATTLE_PET_ALLY)
	if(not active) then return end

	local _, _, _, _, _, _, pet, hintless = C_PetBattles.GetAbilityInfo(LE_BATTLE_PET_ALLY, active, self:GetID())
	if(not pet) then return end

	local enemy = C_PetBattles.GetPetType(LE_BATTLE_PET_ENEMY, C_PetBattles.GetActivePet(LE_BATTLE_PET_ENEMY))
	local modifier = C_PetBattles.GetAttackModifier(pet, enemy)

	if(hintless or modifier == 1) then
		self:SetBackdropColor(0, 0, 0)
	elseif(modifier > 1) then
		self:SetBackdropColor(0, 0.7, 0)
	elseif(modifier < 1) then
		self:SetBackdropColor(0.7, 0, 0)
	end
end

local function UpdateAction(self)
	local active = C_PetBattles.GetActivePet(LE_BATTLE_PET_ALLY)
	local _, name, icon = C_PetBattles.GetAbilityInfo(LE_BATTLE_PET_ALLY, active, self:GetID())

	if(name) then
		self:SetNormalTexture(icon)

		UpdatePower(self)
	end
end

local function PostState(self)
	if(not self:GetName()) then return end

	if(self:IsEnabled()) then
		self:GetNormalTexture():SetDesaturated(false)
	else
		self:GetNormalTexture():SetDesaturated(true)
	end

	if(self:GetAlpha() == 0) then
		self:Hide()
	else
		self:Show()
	end
end

local function OnEvent(self, event)
	if(event == 'PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE') then
		UpdatePower(self)
	elseif(event == 'PET_BATTLE_PET_CHANGED') then
		UpdateAction(self)
	end

	PetBattleActionButton_UpdateState(self)
end

local function CreateButton(index, action)
	local button = CreateFrame('CheckButton', 'pBindingsPetAction' .. index, PetBattle)
	button:SetSize(26, 26)
	button:SetBackdrop(BACKDROP)
	button:SetBackdropColor(0, 0, 0)
	button:SetNormalTexture([=[Interface\Icons\Inv_Misc_QuestionMark]=])
	button:GetNormalTexture():SetTexCoord(0.08, 0.92, 0.08, 0.92)
	button:SetMotionScriptsWhileDisabled(true)

	button.Lock = button:CreateTexture()

	local hotkey = button:CreateFontString(nil, 'ARTWORK')
	hotkey:SetPoint('BOTTOMRIGHT')
	hotkey:SetFont(FONT, 8, 'OUTLINEMONOCHROME')
	hotkey:SetText(index)

	if(index == 1) then
		button:SetPoint('CENTER')
	else
		button:SetPoint('LEFT', _G['pBindingsPetAction' .. index - 1], 'RIGHT', 4, 0)
	end

	button.actionType = action
	button.actionIndex = index

	button:RegisterEvent('PET_BATTLE_ACTION_SELECTED')
	button:RegisterEvent('PET_BATTLE_PET_ROUND_PLAYBACK_COMPLETE')
	button:RegisterEvent('PET_BATTLE_PET_CHANGED')
	button:SetScript('OnEvent', OnEvent)

	return button
end

PetBattle:RegisterEvent('ADDON_LOADED')
PetBattle:SetScript('OnEvent', function(self, event, name)
	if(name and name ~= 'Blizzard_PetBattleUI') then return end

	for index = 1, NUM_BATTLE_PET_ABILITIES do
		local button = CreateButton(index, LE_BATTLE_PET_ACTION_ABILITY)
		button:SetScript('OnClick', PetBattleAbilityButton_OnClick)
		button:SetScript('OnEnter', PetBattleAbilityButton_OnEnter)
		button:SetScript('OnLeave', PetBattleAbilityButton_OnLeave)
		button:SetID(index)
	end

	local switch = CreateButton(4, LE_BATTLE_PET_ACTION_SWITCH_PET)
	switch:SetNormalTexture([=[Interface\Icons\Inv_Pet_SwapPet]=])
	switch:SetScript('OnLeave', GameTooltip_Hide)
	switch:SetScript('OnEnter', function(self)
		GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
		GameTooltip:SetText(SWITCH_PET, 1, 1, 1, true)
		GameTooltip:AddLine(SWITCH_PET_DESCRIPTION, nil, nil, nil, true)
		GameTooltip:Show()
	end)

	switch:SetScript('OnClick', function(self)
		local state = C_PetBattles.GetBattleState()
		local action = C_PetBattles.GetSelectedAction()

		local selection = PetBattleFrame.BottomFrame.PetSelectionFrame
		if(selection:IsShown() and not ((not action or action == nil) and state == 2 or state == 4)) then
			PetBattlePetSelectionFrame_Hide(selection)
		else
			PetBattlePetSelectionFrame_Show(selection)
		end
	end)

	local trap = CreateButton(5, LE_BATTLE_PET_ACTION_TRAP)
	trap:SetNormalTexture([=[Interface\Icons\Inv_Pet_PetTrap01]=])
	trap:SetScript('OnLeave', GameTooltip_Hide)
	trap:SetScript('OnClick', PetBattleCatchButton_OnClick)
	trap:SetScript('OnEnter', function(self)
		local _, name, _, _, description = C_PetBattles.GetAbilityInfoByID(C_PetBattles.GetPlayerTrapAbility())
		GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
		GameTooltip:SetText(name, 1, 1, 1, true)
		GameTooltip:AddLine(description, nil, nil, nil, true)

		if(self.additionalText) then
			GameTooltip:AddLine(self.additionalText, 1, 0, 0, true)
		end

		GameTooltip:Show()
	end)

	local forfeit = CreateButton(6)
	forfeit:SetNormalTexture([=[Interface\Icons\Inv_Pet_ExitBattle]=])
	forfeit:SetScript('OnClick', PetBattleForfeitButton_OnClick)
	forfeit:SetScript('OnLeave', GameTooltip_Hide)
	forfeit:SetScript('OnEnter', function(self)
		GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
		GameTooltip:SetText(PET_BATTLE_FORFEIT, 1, 1, 1, true)
		GameTooltip:AddLine(PET_BATTLE_FORFEIT_DESCRIPTION, nil, nil, nil, true)
		GameTooltip:Show()
	end)
	
	hooksecurefunc('PetBattleActionButton_UpdateState', PostState)

	PetBattleFrame.BottomFrame.PetSelectionFrame:SetParent(self)
	PetBattleFrame.BottomFrame:SetParent(Hider)
end)

if(IsAddOnLoaded('Blizzard_PetBattleUI')) then
	PetBattle:GetScript('OnEvent')(PetBattle)

	for index = 1, NUM_BATTLE_PET_ABILITIES do
		OnEvent(_G['pBindingsPetAction' .. index], 'PET_BATTLE_PET_CHANGED')
	end
end
