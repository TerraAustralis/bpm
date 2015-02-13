as yet unclassified
backupDatabaseTo: directory

	self deleteContentsOfDirectory: directory.
	Q2Session current backupDatabaseTo: directory.