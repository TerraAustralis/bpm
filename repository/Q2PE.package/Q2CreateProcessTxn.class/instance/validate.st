as yet unclassified
validate

	(Q2Session current model findProcessNamed: newName) notNil ifTrue: [ ^self invalidBecause: 'Process ', newName, ' already exists' ]