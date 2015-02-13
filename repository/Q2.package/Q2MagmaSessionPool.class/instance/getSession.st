public
getSession
	| session  |

	self critical: [
		self isFull ifFalse: [ 
			requestedSessionCount := requestedSessionCount + 1.
			monitor 
				waitWhile: [ self preallocateFreeSessions. freeSessions isEmpty ]
				for: #sessionAvailable.
			requestedSessionCount := requestedSessionCount - 1.
			session := freeSessions removeFirst. 
			usedSessions add: session ] ].
	session ifNil: [
		Q2Log critical: 'The MagmaSessionPool is full, consider raising the current maximum size: ', self poolSize asString.
		self error: 'MagmaSessionPool is full.' ].

	self reviveSession: session.
 	Q2Log debug: 'Allocated ', session asString, ' from service: ', (Q2Scheduler runningService name).
	^session