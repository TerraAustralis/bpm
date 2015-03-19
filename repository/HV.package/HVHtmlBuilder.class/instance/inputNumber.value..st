html-forms
inputNumber: name value: value
	"Add a number field, use if you need to supply your own name
	and default value, which should be a Number. Size defaults to 20."

	^self inputNumber: name size: 20 value: value