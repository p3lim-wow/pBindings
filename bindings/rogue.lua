if(select(2, UnitClass('player')) ~= 'ROGUE') then return end

local _, bindings = ...

local shared = {
	[3] = 'm|/startattack\n/cast Fan of Knives',
	[4] = 's|Feint',

	T = 's|Recuperate',
	F = 's|Slice and Dice',

	BUTTON3 = 's|Stealth',
	BUTTON5 = 's|Rupture',

	stealth = {
		's|Distract',
		[3] = 's|Sap',
		[4] = 's|Pick Pocket',
	},

	shift = {
		's|Vanish',
		's|Sprint',
		's|Cloak of Shadows',
		's|Shadowmeld',
		's|Blind',

		Q = 'm|/cast Combat Readiness\n/cast Evasion',
		T = 's|Throw',
		F = 'm|/focus [help]\n/stopmacro [help]\n/cast [@focus,help] Tricks of the Trade',

		BUTTON4 = 's|Kick',
		BUTTON5 = 's|Kidney Shot',
	},

	ctrl = {
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [flyable] Tyrael\'s Charger; Swift Mistsaber',
	},
}

pBindings:RegisterKeyBindings('Combat', bindings.base, shared, {
	'm|/startattack\n/cast Revealing Strike',
	'm|/startattack\n/cast Sinister Strike',

	[5] = 's|Redirect',

	Q = 's|Adrenaline Rush',
	E = 's|Killing Spree',

	BUTTON4 = 's|Eviscerate',

	stealth = {
		[2] = 's|Cheap Shot',
	},

	shift = {
		E = 's|Blade Flurry',
	},
})

pBindings:RegisterKeyBindings('Assassination', bindings.base, shared, {
	'm|/startattack\n/cast Backstab',
	'm|/startattack\n/cast Mutilate',

	Q = 's|Vendetta',
	E = 's|Cold Blood',

	BUTTON4 = 's|Envenom',

	stealth = {
		[2] = 's|Garrote',
	},
})
