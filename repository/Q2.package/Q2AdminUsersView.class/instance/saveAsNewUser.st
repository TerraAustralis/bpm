actions
saveAsNewUser
	"The user saved but wants a new user. Create a transaction and commit it."

	editor save.
	(self model findUserNamed: (editor formValue formValues first newValueAt: #username))
		ifNotNil: [self inform: 'Username already taken, please pick another and try again.']
		ifNil: [self model createUser: editor formValue]