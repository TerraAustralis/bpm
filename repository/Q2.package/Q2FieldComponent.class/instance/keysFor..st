model access
keysFor: aSelector
	aSelector ifNil: [self error: 'Can only fetch keys without provider if selection is selector based'].
	^parent keysFor: aSelector