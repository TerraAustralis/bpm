tests
testCloseTag
	| t |
	t := self tag.
	t closeTag: t tag.
	self assert: canvas contents = '</test>'