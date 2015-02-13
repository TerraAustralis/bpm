testing
isProcessAdmin
	"Ask processes."

	^self processes anySatisfy: [:p | p isAdmin: self]