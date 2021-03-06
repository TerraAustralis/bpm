image reading/writing
formFromStream: aBinaryStream 
	"Answer a ColorForm stored on the given stream.  closes the stream"
	| reader readerClass form |
	readerClass := self withAllSubclasses 
		detect: [ :subclass | subclass understandsImageFormat: aBinaryStream ]
		ifNone: 
			[ aBinaryStream close.
			^ self error: 'image format not recognized' ].
	reader := readerClass new on: aBinaryStream reset.
	Cursor read showWhile: 
		[ form := reader nextImage.
		reader close ].
	^ form