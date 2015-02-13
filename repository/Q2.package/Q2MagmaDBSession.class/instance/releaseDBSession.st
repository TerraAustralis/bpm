magma
releaseDBSession
	"Release the Magma session if we have one."
	
	magmaSession ifNotNil: [
		self pool releaseSession: magmaSession.
		magmaSession := nil.
		].