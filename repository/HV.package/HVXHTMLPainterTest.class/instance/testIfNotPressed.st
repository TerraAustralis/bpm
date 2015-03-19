tests
testIfNotPressed
	| button wasNotPressed|
	canvas form with: [button := canvas button value: 'foo'].
	button ifNotPressed: [wasNotPressed := true].
	self assert: wasNotPressed