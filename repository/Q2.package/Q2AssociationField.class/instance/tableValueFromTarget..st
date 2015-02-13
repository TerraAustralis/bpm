value and cache
tableValueFromTarget: aTarget

	valueLabel ifNotNil: [^aTarget key displayString, valueLabel, aTarget value displayString].
	^aTarget key displayString