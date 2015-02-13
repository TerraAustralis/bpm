as yet unclassified
conjunctAnd: coll

	| first |
	^String streamContents: [:stream |
		first := true.
		coll do: [:p |
			first ifFalse: [stream nextPutAll: ' and: ['].
			first := false.
			stream nextPut: $(.
			p writeOn: stream.
			stream nextPut: $)].
		coll size - 1 timesRepeat: [stream nextPut: $] ]]