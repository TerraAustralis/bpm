accessing
nodeNamed: anObject

	| node nodeId |
	nodeId _ anObject asString.
	node _ nodes at: nodeId ifAbsent: [nil].
	
	node ifNil:
		[self subgraphs do:
			[:each |
			node _ each nodeNamed: nodeId.
			node ifNotNil: [^ node]]].
	
	^ node