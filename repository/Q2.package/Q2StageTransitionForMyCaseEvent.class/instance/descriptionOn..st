events
descriptionOn: aStream
	aStream
		nextPutAll: 'You are responsible for case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" which has changed its state to "';
		nextPutAll: newStage name;
		nextPutAll: '".';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'