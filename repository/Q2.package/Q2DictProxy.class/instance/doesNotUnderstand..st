as yet unclassified
doesNotUnderstand: aMessage
	| argCount |
	argCount _ aMessage arguments size.
	argCount = 0 ifTrue: [^ dict at: aMessage selector].
	argCount = 1 ifTrue: [^ dict at: aMessage selector allButLast put: aMessage argument].
	^ super doesNotUnderstand: aMessage