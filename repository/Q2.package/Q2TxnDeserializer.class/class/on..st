as yet unclassified
on: aByteArrayOrFileName
	| byteArray |
	byteArray := (aByteArrayOrFileName isKindOf: ByteArray)
		ifTrue: [ aByteArrayOrFileName ]
		ifFalse: [
			| fileStream |
			fileStream := (FileStream readOnlyFileNamed: aByteArrayOrFileName).
			[ fileStream binary; contents ] ensure: [ fileStream close ] ].
	^self new
		byteArray: byteArray;
		yourself