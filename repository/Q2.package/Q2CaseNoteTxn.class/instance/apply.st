transactions
apply
	"Perform the txn."

	case addNote: note.
	files ifNotNil: [note attachments: (case createAndAddAttachments: files)]