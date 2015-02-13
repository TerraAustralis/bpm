validation
criteriaIsValidFor: aCase
	"Return true if all criteria for this transition are valid."

	^criteria allSatisfy: [:criterion | criterion isValidFor: aCase]