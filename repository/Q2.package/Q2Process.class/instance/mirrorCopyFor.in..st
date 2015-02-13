mirrors
mirrorCopyFor: aMirror in: aNewModel
	"Return a mirror copy."

	^self veryDeepCopy postMirrorCopyFor: aMirror in: aNewModel