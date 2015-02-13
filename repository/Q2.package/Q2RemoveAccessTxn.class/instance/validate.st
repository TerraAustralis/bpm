printing
validate
	"Raise exception if this txn for some reason can't be done.
	The users should all have access to the process."

	super validate.
	(users allSatisfy: [:each | process seesUser: each])
		ifFalse: [ Q2TxnValidationError signal: 'At least one of the users does not have access to process ', process name, '.']