workflow
outgoingTransitionsDo: aBlock
	"Iterate over all transitions with me as source."

	transitions do: [:t | t from == self ifTrue: [aBlock value: t]]