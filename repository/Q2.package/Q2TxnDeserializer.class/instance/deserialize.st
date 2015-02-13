public
deserialize
	"Deserialize transactions from a gzipped ByteArray for network transmission."

	| stream |
	stream := decompress 
		ifTrue: [ GZipReadStream on: byteArray ]
		ifFalse: [ (RWBinaryOrTextStream with: byteArray) binary; reset; yourself ].
	^(ReferenceStream on: stream) next