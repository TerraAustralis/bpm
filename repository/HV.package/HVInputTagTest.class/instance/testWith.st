tests
testWith
	self assertTagName: 'input'.
	self assert: (self firstElement attributes at: 'type') = 'text'.
	self assert: (self canvas contents endsWith: '/>')