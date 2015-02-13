value and cache
tableValueFromTarget: aTarget

	^self valueFromTarget: aTarget ifAbsent: [self defaultValue ifNil: [self nilText]]