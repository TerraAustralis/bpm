stages
newStage: aName

	^self addStage: (Q2WorkflowStage workflow: self named: aName)