printing
printOn: aStream

	| first |
	aStream nextPutAll: 'Stage[', name asString,':'.
	first := true.
	transitions ifNotNil: [
		transitions do: [:t |
			first ifFalse: [ aStream nextPutAll: ' ' ].
			first := false.
			t from = self
				ifTrue: [ aStream nextPutAll: '->', t to name ]
				ifFalse: [ aStream nextPutAll: '<-', t from name ] ] ].
	aStream nextPut: $]