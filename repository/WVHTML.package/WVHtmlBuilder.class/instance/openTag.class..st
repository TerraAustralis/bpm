basic markup
openTag: aString class: anElementClass
	"Create an element object of a specific class instead
	of using the generic WVHtmlElement."

	| element |
	element _ anElementClass named: aString attributes: self attributes.
	document pushElement: element.
	attributeBuffer _ nil.
	^element