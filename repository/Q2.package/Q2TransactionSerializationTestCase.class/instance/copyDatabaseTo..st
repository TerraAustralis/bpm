snapshot handling
copyDatabaseTo: aDirectoryName
	| directory |

	directory := (self snapshotDirectory, aDirectoryName) asDirectoryEntry.
	directory recursiveDelete.
	Q2Session current location directory asDirectoryEntry copyTo: directory