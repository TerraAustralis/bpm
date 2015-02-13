as yet unclassified
firstOrNew
	^self collection isEmptyOrNil 
		ifFalse: [self collection first]
		ifTrue: [self newObject]