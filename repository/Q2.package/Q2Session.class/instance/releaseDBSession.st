database
releaseDBSession
	"Release the database session if we have one."
	
	dbSession ifNotNil: [
		dbSession releaseDBSession.
		dbSession := nil.
		model := nil.
		].