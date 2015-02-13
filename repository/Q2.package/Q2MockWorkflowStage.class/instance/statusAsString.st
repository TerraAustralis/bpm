printing
statusAsString

	isNew ifTrue: [^'new'].
	isClosed ifTrue: [^'closed'].
	^'open'.