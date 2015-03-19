tests
testIfPressed
	| button wasPressed|
	canvas form with: [button := canvas button value: 'test'.].
	button ifPressed: [wasPressed := true].
	self assert: wasPressed