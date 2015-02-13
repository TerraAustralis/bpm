gatekeepers
addGatekeeper: aUser
	"Add a user as gatekeeper."

	gatekeepers ifNil: [gatekeepers _ OrderedCollection new].
	gatekeepers add: aUser