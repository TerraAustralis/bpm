initialize-release
initialize
	"fill my iVars from the graphics"

	process := self processButtons asOrderedCollection.
	self getProcessUsers .
	transitions := self transitionLines asOrderedCollection.
	states := self stateButtons asOrderedCollection.
	errorList := OrderedCollection new.
	self
		prepareStatesTransitionsInfo;
		resortStates.
	states do: [:each | each resetVisits]