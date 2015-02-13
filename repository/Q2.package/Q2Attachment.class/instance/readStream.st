seaside
readStream
	"Return an opened readonly stream using StandardFileStream so that it is ensured to be fast."

	^ self directory readOnlyFileNamed: localFileName