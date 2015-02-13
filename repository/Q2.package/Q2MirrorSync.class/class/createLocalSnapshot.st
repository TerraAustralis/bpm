as yet unclassified
createLocalSnapshot

	| directory |
	Q2Log debug: 'Creating local snapshot'.
	directory := self localSnapshotDirectory.
	Q2Object deleteContentsOfDirectory: directory.
"	Q2Session current backupDatabaseTo: directory."
	Q2MagmaSessionPool cleanUp.	"this should disconnect and close all sessions, including ours"
	(Q2Object getDirectory: (Q2Object settings databaseDirectory)) asDirectoryEntry copyTo: self localSnapshotDirectory asDirectoryEntry.
	Q2Log debug: 'Local snapshot created'.