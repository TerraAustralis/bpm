rendering
doPrintHtmlOn: stream
	"The value should have the basic ($< $> $&) entities escaped."

	stream nextPutAll: '<textarea name="', name, '" rows="', rows asString, '" cols="', cols asString, '"'.
	self renderAttributesOn: stream.
	stream nextPut: $>; nextPutAll: (value ifNil: [''] ifNotNil: [value asString escapeEntities]); nextPutAll: '</textarea>'