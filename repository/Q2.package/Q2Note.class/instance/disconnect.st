synch
disconnect

	super disconnect.
	author _ self disconnect: author.
	case _ self disconnect: case.
	parent _ self disconnect: parent.