testing
enterValidFor: aCase in: aValidation transition: trans
	"Validate if this case is valid for enter."

	enterCriteria do: [:criterion |
		(criterion isValidFor: aCase)
			ifTrue: [
				aValidation addValidCriterion: criterion transition: trans]
			ifFalse: [
				aValidation
					addDeniedTransition: trans
					criterion: criterion
					message: 'In order to enter stage "', self displayString, '", ', criterion validationMessage]]