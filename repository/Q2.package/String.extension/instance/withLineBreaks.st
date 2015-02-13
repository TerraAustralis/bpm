*q2-extensions
withLineBreaks
	"Render self onto HTML using breaks instead of CRs."

	| stream |
	^String streamContents: [:result |
		stream := self readStream.
		[stream atEnd] whileFalse:
			[result nextPutAll: stream nextLine.
			stream atEnd ifFalse: [result nextPutAll: '<br />']]]