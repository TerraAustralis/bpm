as yet unclassified
testSingleSection
	| out stream in foo |
	out _ INIFile new.
	(out section: 'foo') at: 'key1' put: 'val1'.
	(out section: 'foo') at: 'key2' put: 'val2'.
	stream _ WriteStream on: String new.
	out writeOn: stream.
	
	foo _ (INIFile readFrom: stream contents readStream) section: 'foo'.
	self assert: (foo at: 'key1') = 'val1'.
	self assert: (foo at: 'key2') = 'val2'.