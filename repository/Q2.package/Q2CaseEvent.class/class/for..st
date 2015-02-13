as yet unclassified
for: aCase
	aCase ifNil: [self error: 'We can''t find a case that we just created, should not happen.'].
	^(self new) initializeWith: aCase; yourself