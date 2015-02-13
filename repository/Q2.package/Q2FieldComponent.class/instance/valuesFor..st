model access
valuesFor: aSelector
	aSelector ifNil: [self error: 'Can only fetch values without provider if selection is selector based'].
	^parent valuesFor: aSelector