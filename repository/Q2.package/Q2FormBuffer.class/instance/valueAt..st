read and write
valueAt: field
	"Return value from value Dictionary, if missing return nil."
	self assert: [ field isKindOf: Q2Field ].
	^value at: field ifAbsent: [nil]