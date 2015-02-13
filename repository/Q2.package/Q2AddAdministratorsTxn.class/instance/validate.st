as yet unclassified
validate
	"Raise exception if this txn for some reason can't be done.
	The users should not already be administrator."

	super validate.
	(users anySatisfy: [:each | process isAdmin: each])
		ifTrue: [ Q2TxnValidationError signal: 'At least one of the users already is administrator in process ', process name, '.']