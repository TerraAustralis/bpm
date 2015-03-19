rendering
doPrintHtmlOn: stream
	"Render the image in valid XHTML. The alt tag is mandatory
	in XHTML and the tag needs to end with a slash."

	stream nextPutAll: '<img'.
	stream nextPutAll: ' src="', url, '" alt="', (self alt ifNil: ['no description']), '"'.
	self renderAttributesOn: stream.
	stream nextPutAll: ' />'