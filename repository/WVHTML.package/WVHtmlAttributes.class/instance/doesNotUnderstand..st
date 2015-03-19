dnu
doesNotUnderstand: aMessage
	| argCount |
	argCount _ aMessage arguments size.
	argCount = 0 ifTrue: [^ self at: aMessage selector put: true].
	argCount = 1 ifTrue: [^ self at: aMessage selector allButLast put: aMessage argument].
	^ super doesNotUnderstand: aMessage