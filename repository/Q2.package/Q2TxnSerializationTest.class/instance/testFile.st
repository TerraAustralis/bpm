as yet unclassified
testFile	

	| data result fileName |
	data := Q2MockTransactionLog withAll: { 'foo'. 123. { 'foo'. 'bar'. } }.
	fileName := Q2Platform tempDirectory fullNameFor: 'test.file'.
	[ (Q2TxnSerializer on: data)
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
		deserialize.
	self assert: data = result.
	Q2Platform tempDirectory deleteFileNamed: fileName