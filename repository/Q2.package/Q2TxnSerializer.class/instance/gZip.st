serialize-private
gZip
	"Compress actualStream with gzip if compression is required."

	| stream |
	compress ifFalse: [ ^self ].
	stream := self newBinaryStream.
	(GZipWriteStream on: stream) nextPutAll: actualStream contents; close.
	actualStream := stream