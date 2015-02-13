forms
hasFieldNamed: aString

	^forms anySatisfy: [:f | f hasFieldNamed: aString]