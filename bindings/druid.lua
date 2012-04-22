if(select(2, UnitClass('player')) ~= 'DRUID') then return end

local _, bindings = ...

pBindings:RegisterKeyBindings('Feral Combat', bindings.base, {
	's|Lifebloom',
	'm|/cast [worn:Fishing Pole] Fishing; [nochanneling] Regrowth',
	's|Rejuvenation',
	's|Nourish',
	's|Entangling Roots',

	BUTTON3 = 'm|',
	BUTTON4 = 'm|/focus\n/cast Entangling Roots',
	BUTTON5 = 'm|/focus\n/cast Hibernate',

	cat = {
		's|Rake',
		's|Shred',
		's|Swipe(Cat Form)',
		's|Mangle(Cat Form)',
		's|Maim(Cat Form)',

		Q = 'm|/cast Tiger\'s Fury\n/cast Berserk\n/use 13',
		E = 'm|/cast Tiger\'s Fury\n/cast [form:3] Ravage!',
		F = 's|Savage Roar',
		T = 'm|/cast Feral Charge(Cat Form)\n/cast [form:3] Ravage!',

		BUTTON3 = 's|Prowl',
		BUTTON4 = 's|Rip',
		BUTTON5 = 's|Ferocious Bite',
	},

	stealth = {
		[2] = 'm|/cleartarget\n/targetenemyplayer\n/cast Pounce',
	},

	bear = {
		's|Lacerate',
		's|Maul',
		's|Mangle(Bear Form)',
		's|Thrash(Bear Form)',
		's|Swipe(Bear Form)',

		Q = 's|Berserk',
		E = 's|Barkskin',
		F = 's|Challenging Roar',
		T = 's|Feral Charge(Bear Form)',

		BUTTON3 = 's|Enrage',
		BUTTON4 = 's|Growl',
		BUTTON5 = 's|Bash',
	},

	shift = {
		'm|/cast Innervate',
		'm|/cast [form:1] Demoralizing Roar; [form:3] Dash; Mark of the Wild',
		's|Tranquility',
		's|Shadowmeld',
		'm|/cast [form:3] Stampeding Roar(Cat Form); [form:1] Stampeding Roar(Bear Form)',

		Q = 'm|/cast [noform:1] Barkskin\n/cast [form:1/3] Survival Instincts(Cat or Bear Form)',
		E = 'm|/cast [form:1] Frenzied Regeneration',
		F = 'm|/cast [spec:1] Rebirth; Cyclone',
		T = 'i|14',
		X = 's|Nature\'s Grasp',

		BUTTON4 = 'm|/cast [form:1/3] Faerie Fire (Feral)(Feral); Faerie Fire',
		BUTTON5 = 'm|/cast [form:1] Skull Bash(Bear Form); [form:3] Skull Bash(Cat Form); Cyclone',
	},

	ctrl = {
		's|Bear Form',
		's|Cat Form',
		'm|/cast [swimming] Aquatic Form; [flyable] Swift Flight Form',
		's|Travel Form',

		F = 's|Survey',
		
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [mod:alt] Traveler\'s Tundra Mammoth; [flyable] Twilight Harbinger; Mekgineer\'s Chopper',
	},
})
