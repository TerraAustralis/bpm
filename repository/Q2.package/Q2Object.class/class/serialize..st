serialization
serialize: anObject
	"Serialize an object into a gzipped ByteArray."

	| s1 s2 s3 |
	s1 := RWBinaryOrTextStream on: (ByteArray new: 5000).
	s1 binary.
	s2 _ ReferenceStream on: s1.
	[s2 nextPut: anObject] ensure: [s2 close].
	s3 := RWBinaryOrTextStream on: (ByteArray new: 5000).
	s3 binary.
	(GZipWriteStream on: s3) nextPutAll: s1 contents; close.
	^s3 contents