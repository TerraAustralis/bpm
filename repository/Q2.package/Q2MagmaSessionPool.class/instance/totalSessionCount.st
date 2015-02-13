accessing
totalSessionCount

	^self critical: [ freeSessions size + usedSessions size ]