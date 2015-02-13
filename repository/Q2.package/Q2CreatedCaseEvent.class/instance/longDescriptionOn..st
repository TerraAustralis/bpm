as yet unclassified
longDescriptionOn: aStream
	aStream
		nextPutAll: 'Case ';
		nextPutAll: case name;
		nextPutAll: ' created in process "';
		nextPutAll: case process name;
		nextPutAll: '":'; cr; cr;
		nextPutAll: case subject; cr; cr;
		nextPutAll: case description