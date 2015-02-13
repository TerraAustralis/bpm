serialization
deSerialize: aByteArray
	"Deserialize an object from a gzipped ByteArray."

	^ReferenceStream unStream: (GZipReadStream on: aByteArray) upToEnd