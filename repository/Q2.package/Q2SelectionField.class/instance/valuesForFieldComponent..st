value and cache
valuesForFieldComponent: fc
	"Find the values to select from. If we have provider (someone responding to #value)
	then we use that, otherwise we ask the field component to get it from the model."

	^valuesProvider
		ifNotNil: [valuesProvider value]
		ifNil: [fc valuesFor: self privateKey]