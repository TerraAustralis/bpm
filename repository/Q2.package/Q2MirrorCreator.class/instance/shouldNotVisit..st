copying
shouldNotVisit: anObject
	^(shouldNotVisitObjects includes: anObject) or: 
		[ shouldNotVisitClasses includes: anObject class ]