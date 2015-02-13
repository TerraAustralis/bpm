users
addUsers: aColl
	"Only add those not there already."

	aColl do: [:each | each addProcess: self]