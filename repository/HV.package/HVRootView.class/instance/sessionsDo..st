comanche
sessionsDo: aBlock
	"Iterate over sessions. Only works if we have turned sessions on,
	check implementors of #useSessions."

	^sessionMod sessionsDo: aBlock