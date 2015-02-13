initialize-release
reconnectIn: aModel
	"Find theUser."

	super reconnectIn: aModel.
	theUser := aModel findObjectById: theUser