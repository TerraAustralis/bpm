class initialization
initialize

	"self initialize"

	self initializeForms.
	EditForm := Q2StaticForm named: 'Person'.
	EditForm label: 'Person'.
	EditForm newText label: 'First name'; withSelector: #name; description: 'Your first name.'.
	EditForm newText label: 'Last name'; withSelector: #lastName; description: 'Your last name.'.
	EditForm newText label: 'Primary email'; withSelector: #email; description: 'Your primary email address.'.
	EditForm newText label: 'Secondary email'; withSelector: #email2; description: 'Your secondary email address, only used if explicitly chosen.'.
	EditForm newText label: 'Email signature'; withSelector: #signature; multiline: true; description: 'A text that will be attached last on each note sent as an email.'.
	EditForm newText label: 'Phone'; withSelector: #phone; description: 'The phone number to use on office hours including international code.'.
	EditForm newText label: 'Short phone'; withSelector: #shortPhone; description: 'A short number that can only be used in the local office of the person.'.
	EditForm newText label: 'Mobile phone'; withSelector: #cellPhone; description: 'The mobile phone number including international code.'.
	EditForm newText label: 'Comment'; withSelector: #comment; multiline: true; description: 'A comment about this person.'