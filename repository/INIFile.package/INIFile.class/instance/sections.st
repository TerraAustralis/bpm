accessing
sections
	^ Array streamContents:
		[:stream | self sectionsDo: [:ea | stream nextPut: ea]]