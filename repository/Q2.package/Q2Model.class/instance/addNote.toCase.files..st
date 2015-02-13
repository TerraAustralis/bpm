transactions
addNote: aNote toCase: aCase files: files
	self applyTxn: (Q2CaseNoteTxn note: aNote case: aCase files: files).
	self runEvents.