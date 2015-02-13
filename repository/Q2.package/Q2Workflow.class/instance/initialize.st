initialize-release
initialize

	super initialize.
	stages := OrderedCollection new.
	scratchStage := Q2WorkflowScratchStage workflow: self named: 'Scratch'