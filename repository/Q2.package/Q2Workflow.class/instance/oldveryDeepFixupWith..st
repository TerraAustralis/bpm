copying
oldveryDeepFixupWith: deepCopier

	super veryDeepFixupWith: deepCopier.
	process _ deepCopier references at: process ifAbsent: [process].