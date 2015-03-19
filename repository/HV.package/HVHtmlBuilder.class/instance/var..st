variables
var: aName
	"Return a variable node.
	A variable node can be given content using #value:
	later on after the page has been built."

	^self var: aName value: ''