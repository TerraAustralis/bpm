tests
testWith
	self assertTagName: #br.
	self assert: self canvas contents = '<br/>'