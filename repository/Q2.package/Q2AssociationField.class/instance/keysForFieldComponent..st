value and cache
keysForFieldComponent: fc
	"Find the keys to select from. If we have a provider (someone responding to #value)
	then we use that, otherwise we ask the field component."

	^keysProvider
		ifNotNil: [keysProvider value]
		ifNil: [fc keysFor: self privateKey]