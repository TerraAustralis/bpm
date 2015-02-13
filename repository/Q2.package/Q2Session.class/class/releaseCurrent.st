instance creation
releaseCurrent
	 
	"self releaseCurrent"

	self currentOrNil ifNotNilDo: [:aSession | aSession releaseDBSession ]