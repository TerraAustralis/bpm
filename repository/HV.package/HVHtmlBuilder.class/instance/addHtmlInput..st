private
addHtmlInput: aVar
	"Add the input variable in the correct Form and
	also add it to the page."

	lastForm addInput: aVar.
	^document addElement: aVar