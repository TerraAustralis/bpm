as yet unclassified
cacheForField: aValue component: fc
	"Return a value suitable for the field.
	aValue is expected to be nil or an Integer."

	| val |
	val := aValue isNil & nilForDefault ifTrue: [defaultValue] ifFalse: [aValue].
	(val = defaultValue) & emptyForDefault
		ifTrue: [^'']
		ifFalse: [^val asString]