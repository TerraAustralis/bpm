methods
file: iniFileName
	
	| settings |
	
	settings := self instances at: iniFileName ifAbsentPut: [ self newOnFileNamed: iniFileName ].

	((settings expireTime ifNil: [^ settings])< Time totalSeconds) ifFalse: [ ^ settings ].

	^ self instances at: iniFileName put: (self newOnFileNamed: iniFileName).