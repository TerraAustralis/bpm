transactions
validate
	"Raise exception if this txn for some reason can't be done.
	Check that the user at least can read the case."

	super validate.
	(case readCheck) ifNil: [ Q2TxnValidationError signal: 'User ', user name, ' can not read case ', case name, '.']