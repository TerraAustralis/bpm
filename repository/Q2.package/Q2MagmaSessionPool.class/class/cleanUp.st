barf6
cleanUp
	"Shutdown all sessions "

	Q2Session current releaseDBSession.

	self allInstancesDo:  [ :s |  s disconnectAndCloseAllSessions ].

	self initialize.

	MagmaSession disconnectAndCloseAllConnectedSessions. "make sure all non-pool sessions are closed"
	MagmaSession cleanUp.
	
	MagmaServerConsole allInstancesDo: [:each | each shutdown ].
	MagmaRepositoryController initialize. "Had to add this too! Had controllers hanging in server mode."

	self reset.

	Smalltalk garbageCollect.