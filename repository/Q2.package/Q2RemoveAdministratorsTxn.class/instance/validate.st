as yet unclassified
validate
	"Raise exception if this txn for some reason can't be done.
	The users should all be administrators."

	super validate.
	(users allSatisfy: [:each | process isAdmin: each])
		ifFalse: [ Q2TxnValidationError signal: 'At least one of the users is not administrator in process ', process name, '.']