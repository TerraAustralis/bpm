forms
atField: aField put: aValue

	^aValue
		ifNil: [fieldValues removeKey: aField ifAbsent: []]
		ifNotNil: [fieldValues at: aField put: aValue]