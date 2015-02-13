session allocation
calculateRequiredSessionCount

	^Q2Session current application deploymentMode 
		ifTrue: [ ((self maximumFreeSessions + self minimumFreeSessions) // 2 - freeSessions size) min: (self poolSize - usedSessions size - freeSessions size) ]
		ifFalse: [ freeSessions isEmpty ifTrue: [ 1 ] ifFalse: [ 0 ] ]