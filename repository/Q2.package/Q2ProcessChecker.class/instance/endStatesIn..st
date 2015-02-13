accessing
endStatesIn: aCollectionOfStates
	"return a collection with all states which are an endstate"

	^aCollectionOfStates select: [:ea| ea isEndstage ]