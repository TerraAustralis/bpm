validation
validateFor: aCase in: aValidation
	"Evaluate if this transition is valid.
	We need to check criteria for this transition,
	enterCriteria for target stage and exitCriteria
	for source stage."

	self criteriaIsValidFor: aCase in: aValidation.
	from exitValidFor: aCase in: aValidation transition: self.
	to enterValidFor: aCase in: aValidation transition: self.

	"If it has not been denied then we add it."
	(aValidation isDenied: self) ifFalse: [aValidation addValidTransition: self]