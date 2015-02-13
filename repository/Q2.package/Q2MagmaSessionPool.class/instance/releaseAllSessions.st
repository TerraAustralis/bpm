public
releaseAllSessions
	"First we release the current session back to the pool."

	self critical: [
		usedSessions do: [ :each | self releaseSession: each ] ]