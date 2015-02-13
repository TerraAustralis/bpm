as yet unclassified
allEventClasses
	^self allSubclasses select: [:each | "Include 'non-virtual classes',"
		each class selectors includes: #displayString]