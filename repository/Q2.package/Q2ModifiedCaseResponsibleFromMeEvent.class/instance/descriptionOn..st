evaluating
descriptionOn: aStream
	aStream
		nextPutAll: 'Responsible for case ';
		nextPutAll: case name;
		nextPutAll: ' in process "';
		nextPutAll: case process name;
		nextPutAll: '" has changed from you to "';
		nextPutAll: newResponsible name, '". ';
		nextPutAll: ' (';
		nextPutAll: case subject;
		nextPutAll: ')'