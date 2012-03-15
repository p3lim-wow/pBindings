if(select(2, UnitClass('player')) ~= 'ROGUE') then return end

local _, bindings = ...

pBindings:RegisterKeyBindings('Combat', bindings.base, {
	'm|/startattack\n/cast Revealing Strike',
	'm|/startattack\n/cast Sinister Strike',
	'm|/startattack\n/cast Fan of Knives',
	's|Feint',
	's|Redirect',

	Q = 'm|/cast Adrenaline Rush\n/use 13',
	E = 's|Killing Spree',
	T = 's|Recuperate',
	F = 's|Slice and Dice',

	BUTTON3 = 's|Stealth',
	BUTTON4 = 's|Eviscerate',
	BUTTON5 = 's|Kidney Shot',

	stealth = {
		's|Distract',
		's|Cheap Shot',
		's|Sap',
		'm|/cleartarget\n/targetenemy\n/cast Pick Pocket',
	},

	shift = {
		's|Smoke Bomb',
		's|Sprint',
		's|Cloak of Shadows',
		's|Shadowmeld',
		's|Blind',

		Q = 'm|/cast Combat Readiness\n/cast Evasion',
		E = 's|Blade Flurry',
		T = 's|Throw',
		F = 'm|/focus [help]\n/stopmacro [help]\n/cast [@focus,help] Tricks of the Trade',

		BUTTON3 = 's|Vanish',
		BUTTON4 = 's|Kick',
		BUTTON5 = 's|Dismantle',
	},

	ctrl = {
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [flyable] Golden Gryphon; Swift Mistsaber',
	},
})
