as yet unclassified
printResultsFrom: anOrderedCollection
	Transcript
		nextPutAll: 'Results for: ';
		nextPutAll: testName;
		cr.
	anOrderedCollection do: [ :each |
		Transcript
			nextPutAll: each key;
			nextPutAll: ': '.
		each value printOn: Transcript.
		Transcript cr. ].
	Transcript flush.