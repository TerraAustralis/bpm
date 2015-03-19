rendering
doPrintHtmlOn: stream

	stream nextPutAll: '<input'.
	stream nextPutAll: ' type="', self renderType, '" name="', name, '"'.
	self renderAttributesOn: stream.
	self renderValueOn: stream.
	stream nextPutAll: ' />'