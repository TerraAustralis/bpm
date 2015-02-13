as yet unclassified
testMultipleSections
	| stream out in |
	out _ INIFile new.
	(out section: 'foo') at: 'key1' put: 'val1'.
	(out section: 'foo') at: 'key2' put: 'val2'.
	(out section: 'bar') at: 'key1' put: 'val1'.
	(out section: 'bar') at: 'key2' put: 'val2'.
	stream _ WriteStream on: String new.
	out writeOn: stream.
	
	in _ INIFile readFrom: stream contents readStream.
	self assert: ((in section: 'foo') at: 'key1') = 'val1'.
	self assert: ((in section: 'foo') at: 'key2') = 'val2'.
	self assert: ((in section: 'bar') at: 'key1') = 'val1'.
	self assert: ((in section: 'bar') at: 'key2') = 'val2'.