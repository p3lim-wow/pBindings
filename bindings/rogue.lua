if(select(2, UnitClass('player')) ~= 'ROGUE') then return end

local __, bindings = ...

pBindings:RegisterKeyBindings('Combat', bindings.base, {
	's|Revealing Strike',
	's|Sinister Strike',
	's|Fan of Knives',
	's|Crimson Tempest',
	's|Feint',

	Q = 'm|/cast Adrenaline Rush\n/use 13',
	E = 's|Killing Spree',
	F = 's|Slice and Dice',
	T = 's|Shadowstep',

	BUTTON3 = 's|Stealth',
	BUTTON4 = 's|Rupture',
	BUTTON5 = 's|Eviscerate',	

	shift = {
		's|Smoke Bomb',
		's|Sprint',
		's|Cloak of Shadows',
		's|Redirect',
		's|Blind',

		Q = 's|Evasion',
		E = 's|Blade Flurry',
		F = 'm|/focus [help]\n/stopmacro [help]\n/cast [@focus,help] Tricks of the Trade',
		T = 's|Recuperate',

		BUTTON3 = 's|Vanish',
		BUTTON4 = 's|Expose Armor',
		BUTTON5 = 's|Kick',
	},

	alt = {
		's|Deadly Poison',
	},
})
