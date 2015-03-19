special-toc
toc: aName value: aValue class: aRenderClass
	"Return a table of contents renderer with a given name and value."

	| var |
	var := aRenderClass name: aName value: aValue builder: self.
	variables at: aName put: var.
	^document addElement: var