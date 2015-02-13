accessing
commandLineForFormat: outputFormat

	| file |
	file _ self outputFileNameFor: outputFormat.
	
	^ String streamContents:
		[:stream |
		stream
			nextPut: $";
			nextPutAll: self dotFileName;
			nextPutAll: '" -T';
			nextPutAll: outputFormat;
			nextPutAll: ' -o "';
			nextPutAll: file;
			nextPut: $"]