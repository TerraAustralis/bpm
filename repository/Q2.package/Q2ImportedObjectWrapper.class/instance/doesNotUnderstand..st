wrapping
doesNotUnderstand: aMessage

	| result |
	result := wrappedObject perform: aMessage selector withArguments: aMessage arguments.
	result == wrappedObject ifTrue: [^self].
	^result