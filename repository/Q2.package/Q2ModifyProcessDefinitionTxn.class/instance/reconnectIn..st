synch
reconnectIn: aModel

	super reconnectIn: aModel.
	process := aModel findObjectById: process