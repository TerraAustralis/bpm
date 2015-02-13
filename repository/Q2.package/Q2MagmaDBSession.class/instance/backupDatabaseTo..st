magma
backupDatabaseTo: aDirectory
	" Backup the database to aDirectory, and wait until the backup process ends. "

	| semaphoreWaitingForEndOfBackupProcess |
	semaphoreWaitingForEndOfBackupProcess := (self magmaSession repositoryController fullBackupTo: aDirectory).
	semaphoreWaitingForEndOfBackupProcess wait.