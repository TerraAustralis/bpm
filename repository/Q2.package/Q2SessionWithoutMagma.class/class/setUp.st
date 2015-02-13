as yet unclassified
setUp

	| session |

	self cleanUp.
	
	[	session := Q2Session current.
		self new becomeTheSessionForTheCurrentProcess.
		Q2Gjallar recreateTestDatabase.
	] ensure: [ session becomeTheSessionForTheCurrentProcess ]