rendering
printHtmlOn: aStream
	"Any prefix/suffix is added if they are not nil."

	prefix ifNotNil: [aStream nextPutAll: prefix].
	self doPrintHtmlOn: aStream.
	suffix ifNotNil: [aStream nextPutAll: suffix]