read and write
newValueAt: key
	"Return value from value Dictionary, if missing return originalvalue.
	This message returns the value that will be the new one after committing."
	| field |
	self assert: [ key isSymbol ].
	field := form fieldWithKey: key.
	^value at: field ifAbsent: [originalValues at: field ifAbsent: [nil]]