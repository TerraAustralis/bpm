processRegister
register
	"Add me to all Processes."

	self processes do: [:each | each addSubscription: self]