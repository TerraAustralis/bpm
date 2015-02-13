graph searching
isEveryStateReachable
	"check if all states are reachable"

	| notReachables startStage reachedFromHere newlyReached result |
	notReachables := states copy.
	startStage := (states select: [:state | state isInput]) first.
	notReachables remove: startStage ifAbsent: [].
	reachedFromHere := OrderedCollection with: startStage.
	[self haveStillStartsIn: reachedFromHere andDestinationsIn: notReachables] 
		whileTrue: 
			[newlyReached := self freshlyReachableFrom:  reachedFromHere first.
			reachedFromHere
				removeFirst;
				addAll: newlyReached.
			notReachables removeAllFoundIn: newlyReached].
	result := notReachables isEmpty.
	result 
		ifFalse: [errorList add: 'not every state can be reached via a transition'].
	^result