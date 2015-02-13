as yet unclassified
getUnusedStageName: idea

	^ (fromStage workflow findStageNamed: idea) 
		ifNil: [ idea ]
		ifNotNil: [ self getUnusedStageName: idea, '+' ]