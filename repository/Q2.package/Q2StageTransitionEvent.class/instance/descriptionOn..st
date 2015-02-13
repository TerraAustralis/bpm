events
descriptionOn: aStream
	aStream
		nextPutAll: 'Case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" has changed its state to "';
		nextPutAll: newStage name;
		nextPutAll: '".';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'