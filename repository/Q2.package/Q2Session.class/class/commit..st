instance creation
commit: aBlock
	"Commit <aBlock> with a temporarily allocated Q2Session as the system user."

	self sessionDo: [ :session | session commit: aBlock]