head
headTag: aString
	| element |
	element _ WVHtmlElement named: aString attributes: self attributes.
	document head add: element.
	attributeBuffer _ nil.
	^element