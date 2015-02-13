initialize-release
initialize

	freeSessions := OrderedCollection new.
	usedSessions := freeSessions copy.
	requestedSessionCount := 0.
	monitor := Monitor new.
	info := Q2GetOnceCache newServingSessionPool: self.
	preallocationInProgress := false.
	shutdown := false