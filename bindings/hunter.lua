local _, bindings = ...

pBindings:RegisterKeyBindings('Marksmanship', bindings.base, {
	's|Chimera Shot',
	's|Steady Shot',
	's|Aimed Shot',
	's|Serpent Sting',
	's|Raptor Strike',

	Q = 'm|/cast Rapid Fire\n/cast Readiness\n/cast Lifebloom',
	E = 's|Arcane Shot',

	BUTTON3 = 's|Hunter\'s Mark',
	BUTTON4 = 's|Disengage',
	BUTTON5 = 's|Silencing Shot',

	shift = {
		'm|/focus [help]\n/stopmacro [help]\n/cast [@focus,help][@pet,exists] Misdirection',
		's|Trap Launcher',
		's|Feign Death',
		's|Shadowmeld',
		'm|/cast [@player] Master\'s Call',

		Q = 's|Multi-Shot',
		E = 's|Kill Shot',
	},

	alt = {
		's|Immolation Trap',
		's|Snake Trap',
		's|Freezing Trap',
		's|Explosive Trap',
		's|Ice Trap',
	},

	ctrl = {
		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast Tyrael\'s Charger',
	},
})
