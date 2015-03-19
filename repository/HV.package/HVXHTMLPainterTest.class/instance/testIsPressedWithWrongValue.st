tests
testIsPressedWithWrongValue
	| button |
	canvas form with: [button := canvas button value: 'foo'.].
	self deny: button isPressed