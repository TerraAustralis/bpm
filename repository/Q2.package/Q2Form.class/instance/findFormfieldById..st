fields
findFormfieldById: anId

	^fields detect: [:f | f id = anId] ifNone: [nil]