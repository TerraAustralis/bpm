accounts
sessionAt: key
	"Get the value in the current session for the request."

	^self sessionAt: key ifAbsent: [nil]