instance creation
sessionDo: aBlock asUserName: aUserName
	"Perform <aBlock> with a Q2Session and with <aUserName> as current user."

	 ^ self current sessionDo: aBlock asUserName: aUserName