permissions
readCheck: anObject 
	| s |
	s := self session.
	(anObject isCollection) ifTrue: [^ anObject select: [:each | s isReadable: each]].

	^ (s isReadable: anObject) ifTrue: [anObject] ifFalse: [nil]