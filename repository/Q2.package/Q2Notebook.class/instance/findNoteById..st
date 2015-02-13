accessing
findNoteById: anId
	^notes detect: [:n | n id = anId] ifNone: [nil]