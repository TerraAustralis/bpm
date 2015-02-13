as yet unclassified
readUnique: index at: key
	"Return a single object or nil. Multiple hits cause error."

	| reader |
	reader _ self read: index at: key.
	reader size > 1 ifTrue: [self error: 'Multiple objects found with the same key when expecting only one'].
	^reader size = 1 ifTrue: [reader at: 1] ifFalse: [nil]