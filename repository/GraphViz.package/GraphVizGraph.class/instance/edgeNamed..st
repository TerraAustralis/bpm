accessing
edgeNamed: anAssociation

	| edge |
	edge _ edges at: anAssociation ifAbsent: [nil].
	
	edge ifNil:
		[self subgraphs do:
			[:each |
			edge _ each edgeNamed: anAssociation.
			edge ifNotNil: [^ edge]]].
	
	^ edge