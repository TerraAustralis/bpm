graph searching
freshlyReachableFrom: aState 
	"return all states reachable from aState which have not been visited before"

	| reachables tmp |

	"states do: [:ea| ea nameString color: Color black]."
	reachables := self reachableFrom: aState.
	reachables asSet do: [:each | each visited].
	tmp := reachables select: [:each | each visits < 2].
	"tmp do: [:ea| ea nameString color: Color red]."
	^tmp