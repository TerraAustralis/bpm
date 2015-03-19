attributes - table
character: aCharacter
	| alignment |
	alignment := self attributeAt: 'align' ifAbsent: ['left'].
	(alignment = 'char') ifFalse: [self attributeError: 'Alignment must be "char"'].
	self attributeAt: 'char' put: aCharacter asString