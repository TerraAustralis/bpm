as yet unclassified
defaultTestName
	| context |
	context := thisContext sender.
	[ context method selector asString beginsWith: 'test'] whileFalse: [ context := context sender ].
	^(context method selector asString allButFirst: 4) asLowercase