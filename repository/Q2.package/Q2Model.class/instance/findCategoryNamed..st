permissions
findCategoryNamed: aName 
	^definedCategories detect: [:cat | cat name = aName]
		ifNone: [^nil]