evaluation
writeOn: aStream predicate: aPredicate stack: filterStack

	aStream nextPutAll: '((case ', aPredicate selector, ') ', selector, ' (values at: ', (filterStack indexForValue: aPredicate value) asString, '))'