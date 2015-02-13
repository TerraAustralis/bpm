transactions
validate
	"Raise exception if this txn for some reason can't be done."

	(self model userExists: user) 
		ifFalse: [ 
			Q2TxnValidationError signal: ('User "{1}" does not exist!' format: { user printString }) ].
	self process ifNotNilDo: [:p |
		"Here we check in the broadest sense... global admins and proc admins are allowed"
		((user canAccess: p) or: [user isAdmin] or: [p isAdmin: user])
			ifFalse: [ Q2TxnValidationError signal: 'User ', user name, ' has no access to ', self process name, '.']]