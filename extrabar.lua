local addon = CreateFrame('Frame')
addon:RegisterEvent('PLAYER_LOGIN')
addon:SetScript('OnEvent', function()
	local frame = ExtraActionBarFrame
	frame:SetParent(UIParent)
	frame:SetScale(0.9)
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)
	frame:EnableMouse(true)
	frame.ignoreFramePositionManager = true

	frame:ClearAllPoints()
	if(ExtraBarPosition) then
		local point, x, y = string.split('\031', ExtraBarPosition)
		frame:SetPoint(point, UIParent, point, x, y)
	else
		frame:SetPoint('LEFT', 40, 0)
	end

	local button = ExtraActionButton1
	button:RegisterForDrag('LeftButton')
	button:SetScript('OnDragStart', function()
		if(IsAltKeyDown()) then
			frame:StartMoving()
		end
	end)

	button:SetScript('OnDragStop', function()
		frame:StopMovingOrSizing()

		local point, _, _, x, y = frame:GetPoint()
		ExtraBarPosition = string.format('%s\031%d\031%d', point, x, y)
	end)
end)
