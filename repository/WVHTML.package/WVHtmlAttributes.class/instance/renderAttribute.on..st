rendering
renderAttribute: assoc on: html
	| attr value |
	attr _ assoc key asLowercase.
	value _ assoc value.
	
	value = false ifFalse:
		[html space.
		html spanClass: (self cssClassForAttribute: attr) with:
			[html encodeText: attr].
		html encodeText: '='.
		html spanClass: 'attribute-value' with:
			[html encodeText: '"'.
			value = true
				ifFalse: [html encodeText: value asString]
				ifTrue: [html encodeText: attr].
			html encodeText: '"']]