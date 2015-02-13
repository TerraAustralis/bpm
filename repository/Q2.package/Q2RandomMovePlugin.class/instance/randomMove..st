actions
randomMove: aCase
	"Move the case we are viewing using a random transition.
	Currently there is an update problem of the view."

	| validation |
	self flag: #q2todo. "update problem of view"
	validation := aCase validateTransitions.
	self model makeTransition: validation availableTransitions atRandom forCase: aCase.