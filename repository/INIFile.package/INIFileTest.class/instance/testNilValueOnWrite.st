as yet unclassified
testNilValueOnWrite
	| out expected stream |
	out _ INIFile new.
	(out section: 'foo') at: 'key1' put: nil.
	stream _ WriteStream on: String new.
	out writeOn: stream.
	
	expected _ '[foo]
key1=
'.
	
	self assert: expected = stream contents