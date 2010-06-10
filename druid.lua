if(select(2, UnitClass('player')) ~= 'DRUID') then return end
local _, bindings = ...

oBindings:RegisterKeyBindings('Feral Combat', {
	's|Lifebloom',
	'm|/cast [worn:Fishing Pole,nochanneling] Fishing; [nochanneling] Regrowth',
	's|Rejuvenation',
	's|Moonfire',
	's|Healing Touch',

	BUTTON3 = 's|Revive',
	BUTTON4 = 's|Nourish',
	BUTTON5 = 's|Cyclone',

	NUMPAD5 = 's|Gift of the Wild',

	cat = {
		'm|/cast [stealth] Ravage; Rake',
		'm|/cast [stealth] Pounce; Mangle (Cat)()',
		's|Swipe (Cat)()',
		's|Shred',
		's|Ferocious Bite',

		BUTTON3 = 's|Prowl',
		BUTTON4 = 's|Savage Roar',
		BUTTON5 = 's|Rip'
	},

	bear = {
		'm|/cast Lacerate\n/cast !Maul\n/startattack [harm]',
		'm|/cast Mangle (Bear)()\n/cast !Maul\n/startattack [harm]',
		'm|/cast Swipe (Bear)()\n/cast !Maul\n/startattack [harm]',
		's|Demoralizing Roar',
		's|Maul',

		BUTTON3 = 's|Enrage',
		BUTTON4 = 's|Frenzied Regeneration',
		BUTTON5 = 's|Bash'
	},

	shift = {
		'm|/cast [form:1] Growl; [form:3] Tiger\'s Fury; Rebirth',
		'm|/cast [form:1] Challenging Roar; [form:3] Dash; Entangling Roots',
		'm|/cast [form:1] Feral Charge - Bear; [form:3] Feral Charge - Cat; Hurricane',
		's|Berserk',

		F = 's|Survival Instincts',
		BUTTON4 = 'm|/cast [form:1/3] Faerie Fire (Feral)(); Faerie Fire',
		BUTTON5 = 's|Innervate',

		NUMPAD5 = 's|Mark of the Wild'
	},

	ctrl = {
		's|Dire Bear Form',
		's|Cat Form',
		'm|/cast [swimming] Aquatic Form; [flyable] Swift Flight Form',
		's|Travel Form',

		BUTTON3 = 'm|/dimount\n/leavevehicle\n/cast Celestial Steed',

		NUMPAD5 = 's|Thorns'
	}
})
