synch
reconnectIn: aModel
	"Reconnect to the real domain objects in the given model using the ids."

	user := aModel findObjectById: user