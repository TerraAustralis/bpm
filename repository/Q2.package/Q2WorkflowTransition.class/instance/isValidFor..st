validation
isValidFor: aCase
	"Return true if this transition is valid.
	We need to check criteria for this transition,
	enterCriteria for target stage and exitCriteria
	for source stage."

	^(self criteriaIsValidFor: aCase) and: [
		(from exitValidFor: aCase) and: [
			to enterValidFor: aCase]]