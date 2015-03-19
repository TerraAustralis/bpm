special-toc
toc: aName value: aValue
	"Return a table of contents renderer with a given name and value."

	^self toc: aName value: aValue class: view tocRenderClass