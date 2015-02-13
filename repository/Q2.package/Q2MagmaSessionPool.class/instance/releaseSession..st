public
releaseSession: aSession
	
	aSession ifNil: [ ^ self ].
	aSession inTransaction ifTrue: [
		Q2Log warn: 'MagmaSession ', aSession id asString, ' to be release is still in a transaction which was aborted'].
	[aSession abortAndRefreshAllObjects] on: Exception do:[:ex | ]. "Make sure it's clean."
	self critical: [
		(usedSessions includes: aSession)
			ifTrue: [
				usedSessions remove: aSession.
				Q2Log debug: 'Released MagmaSession ', aSession id asString, ' from service: ', (Q2Scheduler runningService name).
				freeSessions size < self maximumFreeSessions 
					ifTrue: [ 
						freeSessions add: aSession.
						monitor signal: #sessionAvailable ]
					ifFalse: [
						[ aSession disconnect ] fork ] ]
			ifFalse: [
				Q2Log warn: 'Released MagmaSession ', aSession id asString, ' from service: ', (Q2Scheduler runningService name), ' but if was not in the pool before!' ] ]