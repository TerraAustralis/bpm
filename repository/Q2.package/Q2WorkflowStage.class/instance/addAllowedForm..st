forms
addAllowedForm: aForm

	allowedForms ifNil: [allowedForms := Set new].
	^allowedForms add: aForm