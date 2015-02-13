as yet unclassified
postApply
	"Now we can put the txn in the local collection
	and notify the process' index that the case is added
	or has changed."

	super postApply.
	case addTransaction: self; updateIndex