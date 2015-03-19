rendering
printHtmlOn: aStream
	declaration ifNotNil: [aStream nextPutAll: declaration].
	html printHtmlOn: aStream