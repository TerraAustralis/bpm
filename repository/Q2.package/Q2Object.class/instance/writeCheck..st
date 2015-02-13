permissions
writeCheck: anObject 
	| s |
	s := self session.
	anObject isCollection ifTrue: [^anObject select: [:each | s isWritable: each]].
	^(s isWritable: anObject) ifTrue: [anObject] ifFalse: [nil]