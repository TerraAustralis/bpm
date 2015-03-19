tests
testTitle
	canvas title: 'test'.
	self assert: self firstElement name = #title.
	self assert: self firstElement contents first string = 'test'