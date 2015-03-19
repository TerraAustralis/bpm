variables
var
	"Return a variable node. The name will be a single number.
	A variable node can be given content using #value:
	later on after the page has been built but before it is rendered."

	^self var: (variables size fullPrintString) value: ''