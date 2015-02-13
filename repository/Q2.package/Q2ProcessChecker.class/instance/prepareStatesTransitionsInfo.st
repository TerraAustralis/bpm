accessing
prepareStatesTransitionsInfo
	"Fill the states iVars transitionsTo/FromMe"

	states do: [:state | state clearToAndFrom].
	transitions do: 
			[:transition | 
			transition source transitionsFromMeAdd: transition.
			transition target transitionsToMeAdd: transition]