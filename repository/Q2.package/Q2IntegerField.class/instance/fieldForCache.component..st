as yet unclassified
fieldForCache: aValue component: fc
	"Return a value suitable for the cache.
	Entering '' gives nil or defaultValue depending."

	aValue isEmpty ifTrue: [
		^nilForDefault ifTrue: [nil] ifFalse: [defaultValue]].
	^aValue asInteger