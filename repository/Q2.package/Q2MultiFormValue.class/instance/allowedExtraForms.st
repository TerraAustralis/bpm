forms
allowedExtraForms
	"Answer a list of forms that can be added.
	We ask the target and then remove those we already have."

	^self target allowedExtraForms copyWithoutAll: self forms