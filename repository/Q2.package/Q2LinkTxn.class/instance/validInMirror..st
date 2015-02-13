initialize-release
validInMirror: aMirrorDefinition
	
	^(link from validInMirror: aMirrorDefinition) and:
		[ link to validInMirror: aMirrorDefinition ]