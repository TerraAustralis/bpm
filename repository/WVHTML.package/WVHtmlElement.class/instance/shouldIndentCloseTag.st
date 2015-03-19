as yet unclassified
shouldIndentCloseTag
	^ children notNil and: [children anySatisfy: [:ea | ea isString not]]