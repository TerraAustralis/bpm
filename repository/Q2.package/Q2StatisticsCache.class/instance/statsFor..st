as yet unclassified
statsFor: aKind
	"Automatically create a new cache entry, if given kind is not existing yet"
	^ stats detect: [ :each | each kind = aKind ] ifNone: [ stats add: (Q2StatisticsCacheEntry new kind: aKind) ]