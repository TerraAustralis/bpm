accessing
personalImportedUsers
	^importedUsers select: [:u | u unwrapped isPersonalUser]