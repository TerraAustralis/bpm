testing
currentUserHasRole: aRole
	^(self rolesForUser: self currentUser) includes: aRole