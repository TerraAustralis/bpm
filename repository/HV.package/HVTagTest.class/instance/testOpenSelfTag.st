tests
testOpenSelfTag
	| t |
	t := self tag.
	t openTag.
	self assert: canvas contents = ('<', t tag, '>')