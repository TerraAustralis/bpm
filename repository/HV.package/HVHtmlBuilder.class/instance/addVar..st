variables
addVar: aVar
	"Add the variable in the correct Form and
	add it to the document."

	lastForm addInput: aVar. "???"
	^document addElement: aVar