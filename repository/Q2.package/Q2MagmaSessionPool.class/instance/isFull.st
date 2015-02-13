accessing
isFull

	^self critical: [ (usedSessions size + requestedSessionCount) = self poolSize ]