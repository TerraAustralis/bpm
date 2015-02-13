stages
addStage: aStage

	self process addObjectById: aStage.
	^stages add: aStage