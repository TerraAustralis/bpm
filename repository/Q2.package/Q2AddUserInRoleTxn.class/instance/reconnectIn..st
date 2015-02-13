transactions
reconnectIn: aModel
	"Find user."

	super reconnectIn: aModel.
	theUser := aModel findObjectById: theUser.
	role := case process findObjectById: role.