tests
testCloseSelfTag
	| t |
	t := self tag.
	t closeTag.
	self assert: canvas contents = '</test>'