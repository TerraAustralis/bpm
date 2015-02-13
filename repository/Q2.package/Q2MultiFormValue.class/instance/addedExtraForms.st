forms
addedExtraForms
	"Answer a list of forms that can be removed.
	We ask the target and then include only those we have."

	^self target allowedExtraForms intersection: self forms