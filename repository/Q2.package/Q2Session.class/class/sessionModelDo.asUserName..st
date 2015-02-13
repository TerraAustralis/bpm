instance creation
sessionModelDo: aBlock asUserName: aUserName
	"Perform <aBlock> with a Q2Session and with <aUserName> as current user."

	 ^ self current sessionModelDo: aBlock asUserName: aUserName