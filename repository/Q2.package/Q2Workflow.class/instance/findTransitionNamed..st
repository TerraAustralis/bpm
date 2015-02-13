transitions
findTransitionNamed: aName

	stages do: [:stage |
		(stage transitions findNamed: aName) ifNotNilDo: [:hit | ^hit]].
	^nil