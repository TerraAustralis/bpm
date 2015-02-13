as yet unclassified
testCompressed

	| data serializedForm result |
	data := Q2MockTransactionLog withAll: { 'foo'. 123. { 'foo'. 'bar'. } }.
	[ serializedForm := (Q2TxnSerializer on: data)
		compress: true;
		serialize ]
		on: MessageNotUnderstood 
		do: [ :mnu | 
			mnu message selector = #disconnect 
				ifTrue: [ 
					mnu message setSelector: #yourself.
					mnu resume: mnu receiver ]
				ifFalse: [ self halt. mnu pass ] ].
	result := (Q2TxnDeserializer on: serializedForm)
		decompress: true;
		deserialize.
	self assert: data = result