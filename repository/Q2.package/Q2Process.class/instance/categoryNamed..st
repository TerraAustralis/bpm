finding
categoryNamed: aName 
	^(self findCategoryNamed: aName) ifNil: [self newCategoryNamed: aName]