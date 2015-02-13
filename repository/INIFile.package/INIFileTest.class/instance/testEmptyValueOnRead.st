as yet unclassified
testEmptyValueOnRead
	| content in |
	content _ '[foo]
key1 =      '.

	in _ INIFile readFrom: content readStream.
	self assert: ((in section: 'foo') at: 'key1') isNil