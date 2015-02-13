accessing
freeSessionCount

	^self critical: [ freeSessions size ]