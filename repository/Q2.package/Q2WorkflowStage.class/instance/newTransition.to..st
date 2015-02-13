transitions
newTransition: aName to: aStage
	"The transition will add itself to the two stages."

	^Q2WorkflowTransition named: aName from: self to: aStage