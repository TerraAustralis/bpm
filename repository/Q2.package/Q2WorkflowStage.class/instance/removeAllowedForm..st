forms
removeAllowedForm: aForm

	allowedForms ifNil: [^aForm].
	^allowedForms remove: aForm