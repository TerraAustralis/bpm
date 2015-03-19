accounts
sessionAt: key ifAbsentPut: block
	"Get the value in the current session for the request.
	If absent, set it to the value of the block."

	^KomSession current attributes at: key ifAbsent: [self sessionAt: key put: block value]