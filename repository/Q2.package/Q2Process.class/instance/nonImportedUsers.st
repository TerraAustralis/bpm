accessing
nonImportedUsers
	^self model users select: [:e | (importedUsers includes: e) not]