as yet unclassified
login
	"Make a remote login to the server."

	msg := nil.
	(Q2Object verifyPassword: password forUser: username) 
		ifTrue: [self call: ((Q2MirrorSelector parent: self) username: username)]
		ifFalse: [msg := 'Login failed']