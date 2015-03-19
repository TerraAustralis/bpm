tests
testWith
	self assertTagName: #base.
	self assert: self canvas contents = '<base/>'