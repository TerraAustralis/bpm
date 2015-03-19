basic markup
createTag: aString
	| element |
	element _ WVHtmlElement named: aString attributes: self attributes.
	attributeBuffer _ nil.
	^element