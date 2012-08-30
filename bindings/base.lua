local _, bindings = ...

bindings.base = {
	-- Possess bindings
	'm|',
	'm|',
	'm|',
	'm|',
	'm|',
	'm|',

	petbattle = {
		-- Really Blizz?
		'm|/run PetBattleFrame_ButtonDown(1)',
		'm|/run PetBattleFrame_ButtonDown(2)',
		'm|/run PetBattleFrame_ButtonDown(3)',
		'm|/run PetBattleFrame_ButtonDown(4)',
		'm|/run PetBattleFrame_ButtonDown(5)',
	},

	W = 'MOVEFORWARD',
	A = 'STRAFELEFT',
	S = 'MOVEBACKWARD',
	D = 'STRAFERIGHT',

	B = 'OPENALLBAGS',
	G = 'TOGGLEGUILDTAB',
	O = 'TOGGLEFRIENDSTAB',
	I = 'TOGGLELFGPARENT',
	J = 'TOGGLEENCOUNTERJOURNAL',
	K = 'TOGGLECOMPANIONJOURNAL',

	ctrl = {
		R = 'TOGGLERAIDTAB',
		F = 's|Survey',

		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [mod:alt] Traveler\'s Tundra Mammoth; [flyable] Pureblood Fire Hawk; Crimson Deathcharger',
	},

	HOME = 'TOGGLEAUTORUN',

	UP = 'RAIDTARGET8',
	DOWN = 'RAIDTARGET7',
	LEFT = 'RAIDTARGET1',
	RIGHT = 'RAIDTARGET2',

	F12 = 'm|/run ReloadUI()',

	['|'] = 'm|/click ExtraActionButton1'
}
