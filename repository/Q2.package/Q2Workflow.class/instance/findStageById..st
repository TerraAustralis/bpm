transitions
findStageById: anId

	stages do: [:stage |
		stage id = anId ifTrue: [^stage]].
	scratchStage id = anId ifTrue: [^scratchStage].
	^nil