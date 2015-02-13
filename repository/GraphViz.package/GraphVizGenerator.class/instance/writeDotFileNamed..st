generating
writeDotFileNamed: aString

	| fileName file |
	fileName _ aString.
	(aString endsWith: self dotExtension) ifFalse: [fileName _ fileName, self dotExtension].
	
	file _ self outputFileDirectory forceNewFileNamed: fileName.
	[file nextPutAll: self graph dot] ensure: [file close]