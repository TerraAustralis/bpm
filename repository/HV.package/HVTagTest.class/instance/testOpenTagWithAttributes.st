tests
testOpenTagWithAttributes
	| t |
	t := self tag.
	t attributeAt: 'test' put: 'test'.
	t openTag: t tag.
	self assert: canvas contents = '<test test="test">'