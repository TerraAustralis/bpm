tests
testWith
	self assertTagName: #html.
	self assert: (self firstElement attributes at: 'xmlns') = tag class xmlns.