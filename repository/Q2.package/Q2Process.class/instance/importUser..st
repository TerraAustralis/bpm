users
importUser: aUser
	"Import user, if not already imported.
	This also imports the person, if the user is a real user."

	(self seesUser: aUser) ifFalse: [
		aUser isRealUser ifTrue: [self importPerson: aUser person].
		^importedUsers add: (self wrapImport: aUser)]