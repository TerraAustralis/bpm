snapshot handling
restoreDatabaseFrom: aDirectoryName
	| directory |
	directory := 	(self snapshotDirectory, aDirectoryName) asDirectoryEntry.
	directory exists ifTrue: [
		'magma' asDirectoryEntry recursiveDelete.
		directory copyTo: 'magma'.		
		^true ].
	^false