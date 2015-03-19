as yet unclassified
printCloseTagOn: aStream 
	aStream
		nextPutAll: '</';
		nextPutAll: self name;
		nextPut: $>