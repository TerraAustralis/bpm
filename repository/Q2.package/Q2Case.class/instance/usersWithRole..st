roles
usersWithRole: aRole

	^roles select: [:ass | ass value = aRole ] thenCollect: [:ass | ass key ]