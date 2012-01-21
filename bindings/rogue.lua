if(select(2, UnitClass('player')) ~= 'ROGUE') then return end

local _, bindings = ...

pBindings:RegisterKeyBindings('Combat', bindings.base, {
	'm|/startattack\n/cast Revealing Strike',
	'm|/startattack\n/cast Sinister Strike',
	'm|/startattack\n/cast Fan of Knives',
	's|Redirect',
	's|Feint',

	Q = 's|Adrenaline Rush',
	E = 's|Killing Spree',
	T = 's|Recuperate',
	F = 's|Slice and Dice',

	BUTTON3 = 's|Stealth',
	BUTTON4 = 's|Eviscerate',
	BUTTON5 = 's|Rupture',

	stealth = {
		's|Distract',
		's|Cheap Shot',
		's|Sap',
		's|Pick Pocket',
	},

	shift = {
		's|Vanish',
		's|Sprint',
		's|Cloak of Shadows',
		's|Shadowmeld',
		's|Blind',

		Q = 'm|/cast Combat Readiness\n/cast Evasion',
		E = 's|Blade Flurry',
		T = 's|Throw',
		F = 'm|/focus [help]\n/stopmacro [help]\n/cast [@focus,help] Tricks of the Trade',

		BUTTON4 = 's|Kick',
		BUTTON5 = 's|Kidney Shot',
	},

	ctrl = {
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [flyable] Tyrael\'s Charger; Swift Mistsaber',
	},
})
