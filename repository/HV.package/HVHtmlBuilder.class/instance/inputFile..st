html-forms
inputFile: name
	"Add an input file control so that a file can be chosen
	and included with the form. The form must be a multipart
	form - see #postFormMultiPart."

	^self inputFile: name value: false