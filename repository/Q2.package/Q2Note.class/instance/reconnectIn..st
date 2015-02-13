synch
reconnectIn: aModel

	super reconnectIn: aModel.
	case := aModel findCaseById: case.
	author := case process findUserOrPersonById: author.
	parent := case findNoteById: parent.