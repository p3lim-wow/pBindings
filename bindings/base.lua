local _, bindings = ...

bindings.base = {
	[5] = 's|placeholder',
	[6] = 's|placeholder',
	[7] = 's|placeholder',
	[8] = 's|placeholder',
	[9] = 's|placeholder',

	W = 'MOVEFORWARD',
	A = 'STRAFELEFT',
	S = 'MOVEBACKWARD',
	D = 'STRAFERIGHT',
	
	B = 'OPENALLBAGS',
	G = 'TOGGLEGUILDTAB',
	O = 'TOGGLEFRIENDSTAB',

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
