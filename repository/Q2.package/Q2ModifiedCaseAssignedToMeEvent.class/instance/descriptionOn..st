evaluating
descriptionOn: aStream
	aStream
		nextPutAll: 'You have been assigned to case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '". (';
		nextPutAll: case subject;
		nextPutAll: ')'