copying
oldveryDeepFixupWith: deepCopier

	super veryDeepFixupWith: deepCopier.
	workflow _ deepCopier references at: workflow ifAbsent: [workflow]