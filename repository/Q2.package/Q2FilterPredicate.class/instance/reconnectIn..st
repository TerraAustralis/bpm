synch
reconnectIn: aModel
	super reconnectIn: aModel.
	filter := aModel findObjectById: filter