evaluating
descriptionOn: aStream
	aStream
		nextPutAll: 'Responsible for case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" has changed to you.';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'