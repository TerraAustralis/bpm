database
sessionDo: aBlock asUserName: aUserName
	"Perform <aBlock> with a Q2Session and with <aUserName> as current user."

	  [ self currentUserName: aUserName.
		^ aBlock value: self ]
			ensure: [self releaseDBSession]