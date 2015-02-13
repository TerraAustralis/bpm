printing
printTailOn: aStream

	aStream nextPut: $:.
	"(timestampCreated asSeconds \\ 100) printOn: aStream."
	timeStampCreated 
		ifNil: [nil printOn: aStream]
		ifNotNil: [timeStampCreated asDuration printOn: aStream].
	aStream cr.