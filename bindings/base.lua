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
	},

	HOME = 'TOGGLEAUTORUN',

	UP = 'RAIDTARGET8',
	DOWN = 'RAIDTARGET7',
	LEFT = 'RAIDTARGET1',
	RIGHT = 'RAIDTARGET2',

	F12 = 'm|/run ReloadUI()',

	['|'] = 'EXTRAACTIONBUTTON1',
}
