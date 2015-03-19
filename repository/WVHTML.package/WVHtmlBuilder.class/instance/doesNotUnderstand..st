dnu
doesNotUnderstand: aMessage
	| argCount |
	argCount _ aMessage arguments size.
	argCount = 0 ifTrue: [^ self tag: aMessage selector].
	argCount = 1 ifTrue: [^ self tag: aMessage selector allButLast do: aMessage argument].
	^super doesNotUnderstand: aMessage