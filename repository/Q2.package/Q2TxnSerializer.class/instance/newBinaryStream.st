serialize-private
newBinaryStream

	^(RWBinaryOrTextStream on: (ByteArray new: 4096))
		binary;
		yourself