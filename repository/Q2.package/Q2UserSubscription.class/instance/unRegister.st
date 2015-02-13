processRegister
unRegister
	"Remove me from all Processes."

	self processes do: [:each | each removeSubscription: self]