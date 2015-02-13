editor UI
fillForm: aForm
	super fillForm: aForm.
	"add fields to form for editing receiver properties"

	self flag: #fix. " no accessors for these inst vars"
"	aForm newText label: 'True string'; selector: #trueString.
	aForm newText label: 'False string'; selector: #falseString."