mirrors-obsolate
mirrorCopy
	"Use the mirror specification aMirror to return
	a mirror copy of this model. We first make a shallow
	copy and then let it copy its contents further."

	^self shallowCopy postMirrorCopy