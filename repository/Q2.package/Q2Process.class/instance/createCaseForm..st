forms
createCaseForm: aForm
	"Set the form used for creating a case."
	aForm ifNotNil: [
		aForm addCategory: (self categoryNamed: 'Public forms').
		aForm fields do: [:each | each addCategory: (self categoryNamed: 'Public forms')]].
	createCaseForm := aForm