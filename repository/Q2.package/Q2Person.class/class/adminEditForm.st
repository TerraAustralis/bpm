class initialization
adminEditForm
	"Special form for administration."

	^AdminEditForm ifNil: [
		AdminEditForm := super adminEditForm.
		AdminEditForm newText label: 'Company id (key1)'; withSelector: #key1; readOnly: true; description: 'A unique short name for the person, typically first three letters in first and last name.'.
		AdminEditForm newText label: 'Employee number (key2)'; withSelector: #key2; description: 'A unique number for the employment.'; readOnly: true.
		AdminEditForm newText label: 'Extra key (key3)'; withSelector: #key3; description: 'An extra key for identifying this person.'; readOnly: true.
		AdminEditForm]