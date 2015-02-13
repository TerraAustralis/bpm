editor UI
fillForm: aForm
	super fillForm: aForm.
	(self isMemberOf: Q2TextField) ifTrue: [
		aForm newBoolean label: 'Multiline'; withSelector: #multiline.
		aForm newInteger label: 'Maximum length'; withSelector: #maxLength.
		aForm newInteger label: 'Columns'; withSelector: #cols.
		aForm newInteger label: 'Rows'; withSelector: #rows.

	]