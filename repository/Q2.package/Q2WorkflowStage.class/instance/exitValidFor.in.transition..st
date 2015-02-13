testing
exitValidFor: aCase in: aValidation transition: trans
	"Validate if this case is valid for exit."

	exitCriteria do: [:criterion |
		(criterion isValidFor: aCase)
			ifTrue: [
				aValidation addValidCriterion: criterion transition: trans]
			ifFalse: [
				aValidation
					addDeniedTransition: trans
					criterion: criterion
					message: 'When exiting stage "', self displayString, '", ', criterion validationMessage]]