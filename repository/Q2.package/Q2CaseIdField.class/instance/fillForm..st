as yet unclassified
fillForm: aForm
	super fillForm: aForm.
	(aForm fieldWithSelector: #readOnly) readOnly: true.