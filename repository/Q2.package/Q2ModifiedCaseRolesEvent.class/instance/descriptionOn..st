as yet unclassified
descriptionOn: aStream
	aStream
		nextPutAll: 'Roles for case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: 'has changed.';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'