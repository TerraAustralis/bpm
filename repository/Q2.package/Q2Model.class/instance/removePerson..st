users
removePerson: aPerson
	"Remove a person. Does NOT remove it globally!!!
	Do not use this, persons should be disabled - not removed."

	Q2Log warn: 'Person removed: ', aPerson name.
	persons remove: aPerson.
	self removeObjectById: aPerson