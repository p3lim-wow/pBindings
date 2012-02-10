if(select(2, UnitClass('player')) ~= 'SHAMAN') then return end

local _, bindings = ...

pBindings:RegisterKeyBindings('Restoration', bindings.base, {
	'm|/cast [@mouseover,exists][] Chain Heal',
	'm|/cast [@mouseover,exists][] Healing Surge',
	'm|/cast [@mouseover,exists][] Healing Wave',
	'm|/cast [@mouseover,exists][] Greater Healing Wave',
	's|Wind Shear',

	F = 'm|/cast [@mouseover,exists][] Unleash Elements',
	Q = 's|Spiritwalker\'s Grace',
	E = 'm|/cast [@mouseover,exists][] Riptide',

	BUTTON3 = 's|Water Shield',

	shift = {
		's|Healing Rain',
		's|Nature\'s Swiftness',
		's|Spirit Link Totem',
		's|Mana Tide Totem',
		's|Ancestral Spirit',

		F = 'm|/cast [@target,exists,harm][@party1target,exists,harm][@party2target,exists,harm][@party3target,exists,harm][@party4target,exists,harm] Flame Shock',
		Q = 's|Heroism',
		E = 'm|/cast [@mouseover,exists][] Gift of the Naaru',

		BUTTON3 = 's|Ghost Wolf',
	},

	ctrl = {
		's|Call of the Elements',
		's|Totemic Recall',
		's|Tremor Totem',
		's|Fire Elemental Totem',

		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast Swift Red Gryphon',
	},

	alt = {
		BUTTON3 = 's|Earthliving Weapon',
	}
})
