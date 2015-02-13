value and cache
searchKeysForFieldComponent: fc
	"Find the String keys to search in. If we have a provider (someone responding to #value)
	then we use that, otherwise we ask the field component."

	^keysProvider
		ifNotNil: [keysProvider searchValue]
		ifNil: [fc keysFor: self key]