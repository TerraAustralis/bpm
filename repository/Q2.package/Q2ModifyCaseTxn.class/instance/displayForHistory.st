as yet unclassified
displayForHistory
	| first |
	^ String streamContents: [:s |
		s nextPutAll: 'Case modified: {'.
		first := true.
		formBuffer formValues do: [:each |
			each value keysDo: [:field |
				first ifTrue: [first := false] ifFalse: [ s nextPutAll: ', '].
				field ifNil: [s nextPutAll: '<unknown>'] ifNotNil: [s nextPutAll: field label]]].
		s nextPutAll: '} ']