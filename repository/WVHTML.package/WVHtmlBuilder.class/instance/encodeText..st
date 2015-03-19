basic markup
encodeText: anObject
	| encoded |
	encoded _ String streamContents:
		[:s |
		anObject asString do: [:char | s nextPutAll: (HtmlCharacters at: char ifAbsent: [char asString] )]].
	self text: encoded