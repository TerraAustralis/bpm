accessing
associations
	^ Array streamContents:
		[:stream | self associationsDo: [:ea | stream nextPut: ea]]