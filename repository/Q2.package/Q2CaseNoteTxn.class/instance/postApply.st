transactions
postApply
	"Notify the process' index that the case is added
	or has changed."

	super postApply.
	case updateIndex