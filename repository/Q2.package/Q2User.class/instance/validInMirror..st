testing
validInMirror: aMirrorDefinition

	^(aMirrorDefinition seesUser: self) and: [
		aMirrorDefinition canRead: self ]