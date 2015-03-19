html-forms
inputRadio
	"Add a radio button, name is picked from previous
	radio button unless it has been explicitly closed with #endRadio.
	In that case we generate a new name."

	^self inputRadioValue: false