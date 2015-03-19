tests
testOpenTag
	| t |
	t := self tag.
	t openTag: t tag.
	self assert: canvas contents = ('<', t tag, '>')