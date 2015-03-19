accounts
sessionAt: key ifAbsent: block
	"Get the value in the current session for the request."

	^KomSession current attributes at: key ifAbsent: block