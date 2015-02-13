value and cache
formatValueFrom: aValue
	valueLabel ifNotNil: [aValue key displayString, valueLabel, aValue value displayString].
	^aValue key displayString