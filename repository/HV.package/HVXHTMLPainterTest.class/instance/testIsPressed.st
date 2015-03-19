tests
testIsPressed
	| button |
	canvas form with: [button := canvas button value: 'test'.].
	self assert: button isPressed