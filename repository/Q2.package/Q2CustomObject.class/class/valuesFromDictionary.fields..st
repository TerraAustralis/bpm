instance creation
valuesFromDictionary: aDictionary fields: fields
	| val |
	^self values: (fields collect: [:f |
		val := aDictionary at: f.
		val isString ifTrue: [val := val withBlanksTrimmed].
		val]) asArray