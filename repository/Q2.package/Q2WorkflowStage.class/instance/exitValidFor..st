testing
exitValidFor: aCase
	"Return true if this case is valid for exit."

	^exitCriteria allSatisfy: [:criterion | criterion isValidFor: aCase]