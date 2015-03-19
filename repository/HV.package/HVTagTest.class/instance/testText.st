tests
testText
	self tag text: 'test'.
	self assert: self firstElement contents first string = 'test'