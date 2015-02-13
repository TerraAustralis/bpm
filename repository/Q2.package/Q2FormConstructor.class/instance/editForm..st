as yet unclassified
editForm: aForm
	| fForm |
	form := aForm.

	"build a form for editing form inst vars "

	fForm := Q2Form new.
	fForm newText label: 'Name'; withSelector: #name; description: 'Form name'.
	fForm newText label: 'Label'; withSelector: #label; description: 'Form label'.
	fForm newText label: 'Description'; withSelector: #description; multiline: true; description: 'Form description'.
	editor := Q2FormEditor model: (fForm newBufferFor: form).
	editor parent: self.
	editor noButtons.

	"build forms for editing each form's fields"
	fields := OrderedCollection new.
	form fields do: [ :fld |
		fields add: fld -> (self fieldEditor: fld) 
	].