value and cache
fieldForCache: aValue component: fc
	"Return a value suitable for the cache."

	aValue isEmpty ifTrue: [^nil].
	^[aValue guessDateStringAsDate] on: Error do: [^nil]