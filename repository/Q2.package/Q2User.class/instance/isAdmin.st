testing
isAdmin
	"Ask model."

	^self isFullAccessUser or: [self model isAdmin: self]