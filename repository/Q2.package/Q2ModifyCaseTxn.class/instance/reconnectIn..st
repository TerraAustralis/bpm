transactions
reconnectIn: aModel
	"Find the case to modify. Here we can set the target."

	super reconnectIn: aModel.
	case _ aModel findCaseById: case.
	formBuffer target: case