as yet unclassified
visitCollection: anObjectWithPath
	(anObjectWithPath object asOrderedCollection sortBy: [:a :b | 
		((a respondsTo: #id) and: [ b respondsTo: #id ]) 
			ifTrue: [ a id < b id ]
			ifFalse: [ a printString < b printString ] ]) reverse doWithIndex: [ :object :i |
				(visitedObjects includes: object) ifFalse: [
					stack add: (anObjectWithPath child: object referencedBy: i) ] ]