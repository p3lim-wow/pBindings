local _, bindings = ...

bindings.base = {
	-- Possess bindings
	'm|',
	'm|',
	'm|',
	'm|',
	'm|',
	'm|',

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

		BUTTON3 = 'm|/dismount\n/leavevehicle\n/cast [mod:alt] Traveler\'s Tundra Mammoth; [flyable] Pureblood Fire Hawk; Mekgineer\'s Chopper',
	},

	HOME = 'TOGGLEAUTORUN',

	UP = 'RAIDTARGET8',
	DOWN = 'RAIDTARGET7',
	LEFT = 'RAIDTARGET1',
	RIGHT = 'RAIDTARGET2',

	F12 = 'm|/run ReloadUI()',

	['|'] = 'EXTRAACTIONBUTTON1',
}
