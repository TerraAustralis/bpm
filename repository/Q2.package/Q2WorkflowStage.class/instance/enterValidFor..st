testing
enterValidFor: aCase
	"Return true if this case is valid for enter."

	^enterCriteria allSatisfy: [:criterion | criterion isValidFor: aCase]