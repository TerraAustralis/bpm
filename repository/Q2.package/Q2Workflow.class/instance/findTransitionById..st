transitions
findTransitionById: anId

	stages do: [:stage |
		stage transitions do: [:tr |
			tr id = anId ifTrue: [^tr]]].
	^nil