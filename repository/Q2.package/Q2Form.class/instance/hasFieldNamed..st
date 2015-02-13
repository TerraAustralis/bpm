accessing
hasFieldNamed: aString
	^fields anySatisfy: [:f | f name = aString]