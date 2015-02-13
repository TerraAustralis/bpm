instance creation
sessionModelAsCurrentUserDo: aBlock
	"Perform <aBlock> with a Q2Session as the current user."

	 ^ self current sessionModelAsCurrentUserDo: aBlock