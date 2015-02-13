transitions
transitionsDo: aBlock

	stages do: [:s |
		s outgoingTransitionsDo: [:t | aBlock value: t]]