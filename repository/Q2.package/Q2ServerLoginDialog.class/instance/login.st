actions
login
	"Ask the authenticator to do it."

	msg := nil.
	(LoginsDisabled and: [username ~= 'root'])
		ifTrue: [msg := 'Logins temporarily disabled except for root']
		ifFalse: [
			(authenticator loginUsername: username password: password)
				ifFalse: [msg := 'Login failed']]