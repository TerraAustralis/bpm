events
longDescriptionOn: aStream
	aStream
		nextPutAll: 'A note has been added to case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '":'; cr; cr;
		nextPutAll: case lastNote subject ; cr; cr;
		nextPutAll: case lastNote description