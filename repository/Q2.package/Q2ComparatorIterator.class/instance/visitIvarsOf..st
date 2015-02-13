as yet unclassified
visitIvarsOf: anObjectWithPath
	| parent |
	parent := anObjectWithPath object.
	parent class instSize to: 1 by: -1 do: [ :i |
		| object |
		object := parent instVarAt: i.
		(visitedObjects includes: object) ifFalse: [
			stack add: (anObjectWithPath 
				child: object 
				referencedBy: (parent class allInstVarNames at: i)) ] ]