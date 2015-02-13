evaluating
descriptionOn: aStream
	aStream
		nextPutAll: 'Responsible for case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" has changed to "';
		nextPutAll: self newResponsible fullName;
		nextPutAll: '".';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'