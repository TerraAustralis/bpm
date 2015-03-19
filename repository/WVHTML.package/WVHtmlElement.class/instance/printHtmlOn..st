as yet unclassified
printHtmlOn: aStream
	self printOpenTagOn: aStream.
	self childrenDo: [:ea | ea printHtmlOn: aStream].
	self shouldPrintCloseTag ifTrue: [self printCloseTagOn: aStream].