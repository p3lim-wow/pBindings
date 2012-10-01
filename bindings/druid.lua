if(select(2, UnitClass('player')) ~= 'DRUID') then return end

local __, bindings = ...

local shared = {
	's|Rejuvenation',
	's|Healing Touch',
	's|Mark of the Wild',
	's|Revive',

	T = 's|Typhoon',

	BUTTON4 = 's|Fishing',
	BUTTON3 = 's|Prowl',

	cat = {
		's|Rake',
		[3] = 's|Swipe',
		[4] = 's|Mangle',
		[5] = 's|Thrash',

		BUTTON4 = 's|Rip',
		BUTTON5 = 's|Ferocious Bite',
	},

	bear = {
		's|Lacerate',
		's|Thrash',
		's|Mangle',
		's|Swipe',

		Q = 's|Berserk',
		F = 's|Frenzied Regeneration',

		BUTTON4 = 's|Growl',
	},

	shift = {
		's|Innervate',
		's|Dash',
		's|Tranquility',
		's|Stampeding Roar',
		'm|/cast Mighty Bash\n/cast Ursol\'s Vortex',

		Q = 'm|/cast Survival Instincts\n/cast Barkskin\n/cast [form:1] Might of Ursoc',
		E = 'm|/console autounshift 0\n/cast Nature\'s Swiftness\n/cast Healing Touch\n/console autounshift 1\n/use item:5512',
		F = 'm|/console autounshift 0\n/cast Nature\'s Swiftness\n/cast Rebirth\n/console autounshift 1',
		T = 's|Symbiosis',

		BUTTON3 = 's|Shadowmeld',
		BUTTON4 = 's|Faerie Fire',
		BUTTON5 = 's|Skull Bash',
	},

	ctrl = {
		's|Bear Form',
		's|Cat Form',
		'm|/cast [swimming] Aquatic Form; [flyable] Swift Flight Form; Travel Form',
		's|Travel Form',
		's|Heart of the Wild',
	},
}

pBindings:RegisterKeyBindings('Feral', bindings.base, shared, {
	cat = {
		[2] = 's|Shred',

		Q = 'm|/cast Tiger\'s Fury\n/cast Berserk\n/cast Nature\'s Vigil',
		E = 'm|/cast Tiger\'s Fury',
		F = 's|Savage Roar',
	},
})

pBindings:RegisterKeyBindings('Guardian', bindings.base, shared, {
	[5] = 's|Wild Charge',

	cat = {
		[2] = 's|Mangle',

		Q = 'm|/cast Berserk\n/cast Nature\'s Vigil',
	},

	bear = {
		[5] = 's|Wild Charge',

		E = 's|Incarnation',

		BUTTON5 = 's|Savage Defense',
		BUTTON3 = 's|Enrage',
	},
})