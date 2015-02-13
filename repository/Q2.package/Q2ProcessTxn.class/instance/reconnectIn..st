initialize-release
reconnectIn: aModel
	"Find theUser."

	super reconnectIn: aModel.
	process := aModel findObjectById: process