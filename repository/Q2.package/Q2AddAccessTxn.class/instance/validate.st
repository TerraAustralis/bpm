transactions
validate
	"Raise exception if this txn for some reason can't be done.
	The user should not already have access to the Process."

	super validate.
	(users anySatisfy: [:each | process seesUser: each ])
		ifTrue: [ Q2TxnValidationError signal: 'At least one of the users already has access to process ', process name, '.']