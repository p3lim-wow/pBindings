
local addon = CreateFrame('Frame')
addon:RegisterEvent('PLAYER_LOGIN')
addon:RegisterEvent('UPDATE_EXTRA_ACTIONBAR')
addon:SetScript('OnEvent', function(self, event) self[event](ExtraActionButton1, event) end)

local Show, Hide

function addon:PLAYER_LOGIN()
	if(UIPARENT_MANAGED_FRAME_POSITIONS.ExtraActionBarFrame) then
		UIPARENT_MANAGED_FRAME_POSITIONS.ExtraActionBarFrame = nil
	end

	-- the button seems to randomly disappear,
	-- so we hook the functions and control them ourselves.
	-- this will however require a reload to remove.
	Show = self.Show
	Hide = self.Hide
	self.Show = function() end
	self.Hide = function() end

	self:SetParent(UIParent)
	self:SetScale(0.9)
	self:SetMovable(true)
	self:EnableMouse(true)
	self:SetClampedToScreen(true)
	self:RegisterForDrag('LeftButton')

	self:ClearAllPoints()
	if(ExtraBarPosition) then
		local point, x, y = string.split('\031', ExtraBarPosition)
		self:SetPoint(point, UIParent, point, x, y)
	else
		ExtraBarPosition = 'LEFT\03140\0310'
		self:SetPoint('LEFT', UIParent, 40, 0)
	end

	
	self:SetScript('OnDragStart', function(self)
		if(IsAltKeyDown()) then
			self:StartMoving()
		end
	end)

	self:SetScript('OnDragStop', function(self)
		self:StopMovingOrSizing()

		local point, _, _, x, y = self:GetPoint()
		ExtraBarPosition = string.format('%s\031%d\031%d', point, x, y)

		if(not InCombatLockdown()) then
			self:ClearAllPoints()
			self:SetPoint(point, UIParent, point, x, y)
		else
			addon:RegisterEvent('PLAYER_REGEN_ENABLED')
		end
	end)
end

function addon:UPDATE_EXTRA_ACTIONBAR()
	if(HasExtraActionBar()) then
		Show(self)
	else
		Hide(self)
	end
end

function addon:PLAYER_REGEN_ENABLED(event)
	addon:UnregisterEvent(event)

	local point, x, y = string.split('\031', ExtraBarPosition)
	self:ClearAllPoints()
	self:SetPoint(point, UIParent, point, x, y)
end