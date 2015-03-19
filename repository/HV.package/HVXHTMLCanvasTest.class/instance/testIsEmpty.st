tests
testIsEmpty
	self assert: canvas isEmpty.
	canvas html: [].
	self deny: canvas isEmpty