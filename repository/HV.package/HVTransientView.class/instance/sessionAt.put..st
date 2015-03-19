accounts
sessionAt: key put: value
	"Set the value in the current session for the request."

	^KomSession current attributes at: key put: value