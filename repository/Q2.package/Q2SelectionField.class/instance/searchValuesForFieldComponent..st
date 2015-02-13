value and cache
searchValuesForFieldComponent: fc
	"Find the values to search among. If we have a provider then we use that,
	otherwise we ask the field component to get it from the model.
	CustomObjects as providers give back a collection of Strings and must later
	be mapped to the real custom object."

	^valuesProvider
		ifNotNil: [valuesProvider searchValue]
		ifNil: [fc valuesFor: self privateKey]