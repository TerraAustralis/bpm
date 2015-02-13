transactions
validate
	"Raise exception if this txn for some reason can't be done.
	Check that the user has enough access. Subclasses can
	add special validation using #validateUser."

	super validate.
	(user isAdmin or: [process isAdmin: user] or: [self validateUser])
		ifFalse: [ Q2TxnValidationError signal: 'User ', user name, ' is not allowed to write process ', process name, '.']