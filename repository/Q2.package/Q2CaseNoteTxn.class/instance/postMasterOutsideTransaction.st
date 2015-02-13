transactions
postMasterOutsideTransaction
	super postMasterOutsideTransaction.
	(Q2NoteAddedEvent for: case) signal