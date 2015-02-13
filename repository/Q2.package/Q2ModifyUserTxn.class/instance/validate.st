transactions
validate
	"Raise exception if this txn for some reason can't be done.
	Check that the user has enough access."

	super validate.
	(user isAdmin or: [user = formBuffer target])
		ifFalse: [ Q2TxnValidationError signal: 'User ', user name, ' is not allowed to edit user ', formBuffer target name, '.']