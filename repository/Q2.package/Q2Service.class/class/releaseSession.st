as yet unclassified
releaseSession
	"Release session if we have one."

	session ifNotNil: [
		session releaseDBSession. 
		session := nil.
		].