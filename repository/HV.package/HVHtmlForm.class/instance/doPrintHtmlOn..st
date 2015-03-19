rendering
doPrintHtmlOn: stream

	"Change this to printOpenTagOn: later"
	stream
		nextPutAll: '<form action="';
		nextPutAll: action;
		nextPutAll: '" method="', method, '"'.
	enctype ifNotNil: [stream nextPutAll: ' enctype="', enctype, '"'].
	stream nextPut: $>.
	self childrenDo: [:ea | ea printHtmlOn: stream].
	stream nextPutAll: '</form>'

"	self printCloseTagOn: stream"