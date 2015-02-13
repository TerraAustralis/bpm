as yet unclassified
visitIvarsOf: anObjectWithPath named: aListOfNames
	| parent |
	parent := anObjectWithPath object.
	aListOfNames reverseDo: [ :each |
		| object |
		object := parent instVarNamed: each.
		(visitedObjects includes: object) ifFalse: [
			stack add: (anObjectWithPath 
				child: object 
				referencedBy: each) ] ]