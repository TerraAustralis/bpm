stages
stageNamed: aName

	^(self findStageNamed: aName) ifNil: [self newStage: aName]