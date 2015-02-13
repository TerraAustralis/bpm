stages
removeStage: aStage

	self process removeObjectById: aStage.
	^stages remove: aStage