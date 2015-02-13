as yet unclassified
session

	^session
		ifNil: [ session := Q2Session current ]
		ifNotNil: [session becomeTheSessionForTheCurrentProcess] "if we are running in a new Process" 
		
	"Last expression was: 
		ifNotNil: [ Q2Session current session becomeTheSessionForTheCurrentProcess ]
	but this gets the session of the new process and that is not our session??
	Therefore I made the change to:
		ifNotNil: [session becomeTheSessionForTheCurrentProcess]"