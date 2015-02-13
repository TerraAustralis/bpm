events
descriptionOn: aStream
	aStream
		nextPutAll: 'Note added to case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '".'