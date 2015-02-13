mirrors
mirrorCopyIn: aModel
	"Return a suitable copy for me to keep in the actual mirror
	for information purposes."

	^self shallowCopy postMirrorCopyIn: aModel