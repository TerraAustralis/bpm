transactions
reconnectIn: aModel
	"Find user."

	super reconnectIn: aModel.
	responsibleUser := aModel findObjectById: responsibleUser