synch
validInMirror: aMirrorDefinition

	^(aMirrorDefinition canAccess: self process) and: [
		aMirrorDefinition canRead: self ]