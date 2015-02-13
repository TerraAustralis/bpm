as yet unclassified
build
	"Creates and populates a new Magma database on disk
	with the partial content intended. This should be run
	in a background Process."

	Q2Log info: 
		(String streamContents: [ :stream |
			stream 
				nextPutAll: 'Mirror database for prefix ''';
				nextPutAll: mirrorDefinition prefix;
				nextPutAll: ''' created in ';
				nextPutAll: [ self createDb ] timeToRun asString;
				nextPutAll: ' milliseconds' ]).
	Q2Log info: 
		(String streamContents: [ :stream |
			stream 
				nextPutAll: 'Mirror database for prefix ''';
				nextPutAll: mirrorDefinition prefix;
				nextPutAll: ''' filled in ';
				nextPutAll: [ self fillDb ] timeToRun asString;
				nextPutAll: ' milliseconds' ]).
	Q2Log info: 
		(String streamContents: [ :stream |
			stream 
				nextPutAll: 'Mirror database for prefix ''';
				nextPutAll: mirrorDefinition prefix;
				nextPutAll: ''' compressed in ';
				nextPutAll: [ self zipDb ] timeToRun asString;
				nextPutAll: ' milliseconds' ]).