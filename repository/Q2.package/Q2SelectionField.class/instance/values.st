value and cache
values
	"Find the values to select from."

	^valuesProvider
		ifNotNil: [valuesProvider value]
		ifNil: [self halt]