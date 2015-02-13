users
verifyPassword: password forUser: user
	"Verify the given user and password.
	Return false if user is missing,
	or if the password is wrong."

	 
	^user verifyPassword: password