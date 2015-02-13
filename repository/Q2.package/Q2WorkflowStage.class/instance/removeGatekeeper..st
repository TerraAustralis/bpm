gatekeepers
removeGatekeeper: aUser
	"Remove a user as gatekeeper if he is one."

	gatekeepers ifNil: [^self].
	gatekeepers remove: aUser ifAbsent: []