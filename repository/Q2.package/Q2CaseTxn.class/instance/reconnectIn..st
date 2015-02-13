initialize-release
reconnectIn: aModel
	"Find the case."

	super reconnectIn: aModel.
	case := aModel findCaseById: case.