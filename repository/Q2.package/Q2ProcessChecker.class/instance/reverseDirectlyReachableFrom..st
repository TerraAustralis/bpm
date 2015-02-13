graph searching
reverseDirectlyReachableFrom: aState 
	"return a OrderedCollection of all states which can reach aState
	via one transition and have not been visited yet"

	| reachables |
	reachables := (aState transitionsToMe collect: [:each | each source]) 
				asSet asOrderedCollection.
	reachables do: [:each | each visited].
	^reachables select: [:each | each visits < 2]