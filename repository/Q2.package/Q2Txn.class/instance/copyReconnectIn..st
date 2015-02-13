synch
copyReconnectIn: aModel
	"Copy self, disconnect it from the domain objects
	and reconnect it in another model."

	^self copy disconnect reconnectIn: aModel