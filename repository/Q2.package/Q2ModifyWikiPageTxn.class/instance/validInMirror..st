synch
validInMirror: aMirrorDefinition

	^(aMirrorDefinition canAccess: parent) and: [
		aMirrorDefinition canRead: parent]