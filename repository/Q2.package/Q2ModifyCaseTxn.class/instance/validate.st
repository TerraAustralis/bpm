transactions
validate
	"Raise exception if this txn for some reason can't be done.
	Check that the user can modify the case."

	super validate.
	(user canWrite: case) ifNil: [ Q2TxnValidationError signal: 'User ', user name, ' can not modify case ', case name, '.']