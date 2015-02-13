as yet unclassified
restoreLocalSnapshot

	| |
	Q2Log debug: 'Restoring local snapshot'.
	Q2MagmaSessionPool cleanUp.	"this should disconnect and close all sessions, including ours"
	MagmaSession disconnectAndCloseAllConnectedSessions.
	Q2Session current releaseDBSession.	"make sure it is cleared so that we get a new one"
	Q2Session current deleteDatabase.
	self localSnapshotDirectory asDirectoryEntry 
		copyTo: (Q2Object getDirectory: (Q2Object settings databaseDirectory)) asDirectoryEntry.
	Q2Log debug: 'Local snapshot restored'.
"	Win32Shell new 
		shellExecute: nil
		lpOperation: 'open'
		lpFile: FileDirectory default pathName , FileDirectory slash , 'win32\bin\copydir.bat'
		lpParameters: self localSnapshotDirectory pathName, ' ', (Q2Object setting: #databaseDirectory)
		lpDirectory: nil
		nShowCmd: 0."
	
"	restoreMode := true.
	[ restoreMode ] whileTrue: [ 	
		100 milliSeconds asDelay wait.
		[ Q2Session current magmaSession begin. 
		restoreMode := false.
		Q2Session current magmaSession abortAndRefreshAllObjects ]
			on: MagmaUserError
			do: [] ].
	self halt.
"