processes
newProcessPrototype: aName

	^self addProcessPrototype: ((self newProcess: aName) initializePrototype)