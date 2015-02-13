stages
removeStageNamed: aName

	| toRemove |
	toRemove _ self findStageNamed: aName.
	toRemove isEmpty ifTrue: [self removeStage: toRemove]