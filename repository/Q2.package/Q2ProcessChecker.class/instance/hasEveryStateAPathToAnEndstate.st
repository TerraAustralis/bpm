graph searching
hasEveryStateAPathToAnEndstate
	"check if an (any) Endstate is reachable from every state"

	| trappedHere endStages result canComeHere |
	trappedHere := states copy.
	trappedHere do: [:each | each resetVisits].
	endStages := self endStatesIn: trappedHere asOrderedCollection.
	trappedHere removeAllFoundIn: endStages.
	result := true.
	[result and: [trappedHere isEmpty not]] whileTrue: 
			[canComeHere := self reverseDirectlyReachableFrom: endStages first.
			endStages addAll: canComeHere.
			"endStages first color: Color magenta ."
			self removeAllCopiesOf: endStages first in: endStages .
			(canComeHere isEmpty and: [endStages isEmpty]) ifTrue: [result := false].
			"endStages do: [:stage| stage color: Color blue]."
			"endStages isEmpty ifFalse: [endStages first color: Color green]."
			trappedHere removeAllFoundIn: canComeHere].
	result 
		ifFalse: [errorList add: 'not every state has a path to an endstate'].
	^result