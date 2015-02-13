roles
responsibleUserAndRoleKeys

	^self process personalImportedUsers select: [:each | each canBeResponsibleFor: self]