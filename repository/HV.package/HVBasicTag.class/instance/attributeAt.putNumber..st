attributes
attributeAt: key putNumber: anInteger 
	anInteger < 0 ifTrue: [self attributeError: key, ' can''t be negative'].
	^ attributes at: key put: anInteger asString