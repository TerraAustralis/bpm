as yet unclassified
releaseAllSessions
	"Let all services release their sessions."

	self allSubclassesDo: [:c | c releaseSession]