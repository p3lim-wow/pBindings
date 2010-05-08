if(select(2, UnitClass('player')) ~= 'SHAMAN') then return end
local _, bindings = ...

local shared = {
	ctrl = {
		's|Call of the Elements',
		's|Call of the Ancestors',
		's|Call of the Spirits',
		's|Totemic Recall'

		BUTTON3 = 'm|/dimount\n/leavevehicle\n/cast Celestial Steed'
	}
}

oBindings:RegisterKeyBindings('Restoration', shared, {
	's|Riptide',
	's|Chain Heal',
	's|Lesser Healing Wave',
	's|Healing Wave',

	shift = {
		's|Gift of the Naaru',
		's|Earth Shield',
		's|Mana Tide Totem',
		's|Ancestral Spirit'		
	},

	NUMPAD1 = 's|Mana Tide Totem',
	NUMPAD2 = 's|Cleansing Totem',
	NUMPAD3 = 's|Tremor Totem',
	NUMPAD5 = 's|Earthliving Weapon',

	BUTTON3 = 's|Water Shield',
	BUTTON5 = 's|Heroism',
	BUTTON4 = 'm|/cast Nature\'s Swiftness\n/cast Tidal Force'
})

oBindings:RegisterKeyBindings('Elemental', shared, {
	's|Flame Shock',
	's|Lava Burst',
	's|Lightning Bolt',
	's|Chain Lightning',

	shift = {
		's|Searing Totem',
		's|Magma Totem',
		's|Fire Nova',
		's|Thunderstorm',

		X = 's|Fire Elemental Totem',
	},

	NUMPAD5 = 's|Flametongue Weapon',

	BUTTON3 = 's|Water Shield',
	BUTTON5 = 's|Heroism',
	BUTTON4 = 's|Elemental Mastery'
})
