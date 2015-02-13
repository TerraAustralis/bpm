as yet unclassified
visitSequenceableCollection: anObjectWithPath
	anObjectWithPath object reverse doWithIndex: [ :object :i |
				(visitedObjects includes: object) ifFalse: [
					stack add: (anObjectWithPath child: object referencedBy: i) ] ]