users
addPerson: aPerson
	"Add a person, if not already added."

	(persons includes: aPerson) ifFalse: [
		"	self session addEvent: (Q2PersonAddedEvent for: aPerson)."
		self addObjectById: aPerson. "works even if already added"
		"	self runEvents."
		persons add: aPerson].
	^aPerson