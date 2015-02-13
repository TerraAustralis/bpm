instance creation
sessionDo: aBlock
	"Perform <aBlock> with a Q2Session as the system user."

	 ^ self current sessionDo: aBlock