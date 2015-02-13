forms
allowedExtraForms
	"Return a list of all forms that the current user can add or remove from the case.
	A user can only add or remove forms that it has write access to."

	^self writeCheck: (
		allowedForms
			ifNil: [self process allCaseForms]
			ifNotNil: [self process allCaseForms intersection: allowedForms])