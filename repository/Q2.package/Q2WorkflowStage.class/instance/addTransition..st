transitions
addTransition: aTransition
	self process addObjectById: aTransition.
	transitions add: aTransition