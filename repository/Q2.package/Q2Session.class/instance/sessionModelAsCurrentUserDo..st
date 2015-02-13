magma
sessionModelAsCurrentUserDo: aBlock
	"Perform <aBlock> with a Q2Session but not changing current user."

	  [ ^ aBlock value: self value: self model ]
			ensure: [self releaseMagmaSession]