tests
testIfPressedifNotPressed
	| button wasPressed wasNotPressed |
	wasNotPressed := false.
	canvas form with: [button := canvas button value: 'test'.].
	button ifPressed: [wasPressed := true] ifNotPressed: [wasNotPressed := true].
	self assert: wasPressed.
	self deny: wasNotPressed