events
descriptionOn: aStream
	aStream
		nextPutAll: 'Case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" has changed.';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'