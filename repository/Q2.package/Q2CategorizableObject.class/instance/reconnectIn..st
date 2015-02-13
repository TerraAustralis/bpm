transactions
reconnectIn: aModel
	"Reconnect the categories."

	super reconnectIn: aModel.
	categories ifNotNil: [categories := categories collect: [:cat | self model findObjectById: cat]]