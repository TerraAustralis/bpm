check Process
isProcessGraphOk
	"check the graph for consistency"

	| result |
	result := true.
	"the non evaluating and is used so that the following methods don't have to check their prereqs"
	result := result & self checkRequiredStates and: 
					[self isEveryStateReachable & self isEveryCulDeSacAnEndstate 
						& self hasEveryStateAPathToAnEndstate].
	^result