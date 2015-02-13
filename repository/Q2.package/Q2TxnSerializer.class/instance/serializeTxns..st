serialize-private
serializeTxns: aCollection
	"Serialize transactions into a ByteArray."

	| referenceStream |
	actualStream := self newBinaryStream.
	referenceStream := (ReferenceStream on: actualStream).
	[ referenceStream nextPut: aCollection ]
		ensure: [ referenceStream close ]