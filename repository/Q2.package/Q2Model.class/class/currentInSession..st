magma
currentInSession: aSession
	"Return the model instance from the db, nil if missing.
	This method assumes we already are running with a dynamically
	bound current Magma session."

	^aSession root model