as yet unclassified
printOpenTagOn: aStream 
	aStream
		nextPut: $<;
		nextPutAll: self name.
	attributes printHtmlOn: aStream.
	self shouldPrintCloseTag ifFalse: [aStream nextPutAll: ' /'].
	aStream nextPut: $>