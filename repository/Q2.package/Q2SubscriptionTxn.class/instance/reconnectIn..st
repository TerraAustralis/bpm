synch
reconnectIn: aModel
	"Let link reconnect to its contents."

	super reconnectIn: aModel.
	subscription reconnectIn: aModel