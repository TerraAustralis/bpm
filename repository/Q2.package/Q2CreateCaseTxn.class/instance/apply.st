transactions
apply
	"Perform the txn. The case knows its process through the scratch stage.
	We add the txn early so that #age works."
	case addTransaction: self.
	case process addCase: case.
	files ifNotNil: [case createAndAddAttachments: files]