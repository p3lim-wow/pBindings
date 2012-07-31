local extra = CreateFrame('Frame')
extra:RegisterEvent('PLAYER_LOGIN')
extra:SetScript('OnEvent', function()
	local frame = ExtraActionBarFrame
	frame:SetParent(UIParent)
	frame.ignoreFramePositionManager = true

	frame:ClearAllPoints()
	frame:SetPoint('CENTER', 0, -250)
end)
