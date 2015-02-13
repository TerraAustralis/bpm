editor UI
fillForm: aForm
	"add fields to form for editing receiver properties"
	aForm newText label: 'Accessor'; withSelector: #accessor selector: #displayString; readOnly: true.
	aForm newText label: 'Name'; withSelector: #name.
	aForm newText label: 'Description'; withSelector: #description; multiline: true; rows: 5.
	aForm newText label: 'Label'; withSelector: #label.
	aForm newText label: 'CSS class'; withSelector: #cssClass.
	aForm newBoolean label: 'Read only'; withSelector: #readOnly.