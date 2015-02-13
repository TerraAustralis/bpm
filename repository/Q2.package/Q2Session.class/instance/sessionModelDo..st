database
sessionModelDo: aBlock
	"Perform <aBlock> with a Q2Session as the system user."

	^ self sessionModelDo: aBlock asUserName: 'system'