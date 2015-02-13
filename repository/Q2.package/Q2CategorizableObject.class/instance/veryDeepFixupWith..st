copying
veryDeepFixupWith: deepCopier
	"Make sure already copied categories refer to the copies and not the originals."

	super veryDeepFixupWith: deepCopier.
	categories ifNotNil: [
		categories := categories collect: [:each |
			deepCopier references at: each ifAbsent: [each]]]