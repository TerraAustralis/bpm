tests
testFormElementValue
	| input |
	canvas form with: [input := canvas input].
	self assert: input value = 'test'.
	request post: false.
	self assert: input value = input