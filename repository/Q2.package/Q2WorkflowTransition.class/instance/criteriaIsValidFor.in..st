validation
criteriaIsValidFor: aCase in: aValidation
	"Validate if all criteria for this transition are met."

	criteria do: [:criterion |
		(criterion isValidFor: aCase)
			ifTrue: [
				aValidation addValidCriterion: criterion transition: self]
			ifFalse: [
				aValidation
					addDeniedTransition: self
					criterion: criterion
					message: criterion validationMessage]]