as yet unclassified
testWith
	self assertTagName: #button.
	self assert: (self firstElement attributes at: 'type') = 'submit'.