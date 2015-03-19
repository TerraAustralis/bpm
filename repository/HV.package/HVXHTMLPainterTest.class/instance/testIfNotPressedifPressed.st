tests
testIfNotPressedifPressed
	| button wasPressed wasNotPressed |
	wasPressed := false.
	canvas form with: [button := canvas button value: 'foo'.].
	button ifNotPressed: [wasNotPressed := true] ifPressed: [wasPressed := true].
	self assert: wasNotPressed.
	self deny: wasPressed