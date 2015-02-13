copying
oldveryDeepInner: copier
	"Only take the stage tree."

	super veryDeepInner: copier.
	stages _ stages veryDeepCopyWith: copier.