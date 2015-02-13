as yet unclassified
writeOn: aStream predicate: aPredicate stack: filterStack

	aStream nextPutAll: '((case ', aPredicate selector, ') ', selector, ' includesAnyOf: (values at: ', (filterStack indexForValue: aPredicate value) asString, '))'

"	filterStack useQueries ifTrue: [
		aStream nextPutAll: '((case ', aPredicate selector, ') ', selector, ' includesAnyOf: (values at: ', (filterStack indexForValue: aPredicate value) asString, '))']
		ifFalse: [
		aStream nextPutAll: '((values at: ', ((filterStack indexForValue: aPredicate value) ) asString, ') ', selector, ' (case ', aPredicate selector, '))']
"