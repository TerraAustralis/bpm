as yet unclassified
getUnusedTransitionName: idea

	^ (fromStage workflow findTransitionNamed: idea) 
		ifNil: [ idea ]
		ifNotNil: [ self getUnusedTransitionName: idea, '+' ]