session allocation
createAFreeSession

	| session |
	self critical: [ shutdown ifTrue: [ ^self ] ].
	session := self newSession.
	self critical: [ 
		freeSessions add: session.
		monitor signal: #sessionAvailable ]