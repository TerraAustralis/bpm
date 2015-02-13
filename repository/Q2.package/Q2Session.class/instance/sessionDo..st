database
sessionDo: aBlock
	"Perform <aBlock> with a Q2Session as the system user."

	^ self sessionDo: aBlock asUserName: 'system'