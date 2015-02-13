processes
createProcess: newName fromPrototypeNamed: aName

	| proto |
	proto := self findProcessPrototypeNamed: aName.
	^proto ifNotNil: [self addProcess: (proto copyPrototype name: newName)]