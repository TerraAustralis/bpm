as yet unclassified
testComplexRead
	| content in |
	content _ '

[bar]
;comment

key1 = val1

key2 = val2
;key2 = oldvalue

;foo heading comment
[foo]
key1=    val1
key2= val with a space in it

'.

	in _ INIFile readFrom: content readStream.
	self assert: ((in section: 'foo') at: 'key1') = 'val1'.
	self assert: ((in section: 'foo') at: 'key2') = 'val with a space in it'.
	self assert: ((in section: 'bar') at: 'key1') = 'val1'.
	self assert: ((in section: 'bar') at: 'key2') = 'val2'.