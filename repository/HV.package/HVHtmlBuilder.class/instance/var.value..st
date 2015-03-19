variables
var: aName value: aValue
	"Return a variable node.
	A variable node can be given content using #value:
	later on after the page has been built."

	| var |
	var := HVSimpleVariable named: aName attributes: self attributes.
	var value: aValue.
	variables at: aName put: var.
	^document addElement: var