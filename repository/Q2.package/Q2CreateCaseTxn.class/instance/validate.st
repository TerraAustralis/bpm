transactions
validate
	"Raise exception if this txn for some reason can't be done.
	Check that the user can create the case."

	super validate.
	(user canCreate: case) ifFalse: [ Q2TxnValidationError signal: 'User ', user name, ' can not create case ', case name, '.']