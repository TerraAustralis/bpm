as yet unclassified
testCompressedFile	

	| data result fileName |
	fileName := Q2Platform tempDirectory fullNameFor: 'test.file.compressed'.
	data := Q2MockTransactionLog withAll: { 'foo'. 123. { 'foo'. 'bar'. } }.
	[ (Q2TxnSerializer on: data)
		compress: true;
		fileName: fileName;
		serialize ]
		on: MessageNotUnderstood 
		do: [ :mnu | 
			mnu message selector = #disconnect 
				ifTrue: [ 
					mnu message setSelector: #yourself.
					mnu resume: mnu receiver ]
				ifFalse: [ mnu pass ] ].
	result := (Q2TxnDeserializer on: fileName) 
		decompress: true;
		deserialize.
	self assert: data = result.
	Q2Platform tempDirectory deleteFileNamed: fileName