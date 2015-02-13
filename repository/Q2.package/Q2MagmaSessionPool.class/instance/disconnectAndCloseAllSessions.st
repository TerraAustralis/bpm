public
disconnectAndCloseAllSessions
	"First we release them all."

	self critical: [
		shutdown := true.
		monitor waitWhile: [ preallocationInProgress ].
		self releaseAllSessions.
		freeSessions do: [ :s | s ifNotNil: [ s disconnectAndClose ] ].
		freeSessions := freeSessions class new ]