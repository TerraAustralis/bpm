events
descriptionOn: aStream
	aStream
		nextPutAll: 'You are related to ';
		nextPutAll: 'case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" which has changed.';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'