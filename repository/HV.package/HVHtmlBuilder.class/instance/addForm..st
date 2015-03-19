html-forms
addForm: aForm
	"Add the form to the document.
	The form is also given an id for this page."

	| id |
	id := lastForm ifNil: [1] ifNotNil: [lastForm id + 1].
	aForm id: id.
	lastForm := aForm.
	^document pushElement: aForm