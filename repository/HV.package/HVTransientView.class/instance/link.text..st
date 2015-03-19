deprecated
link: url text: text
	"Return a HTML link."

	self deprecated: 'Deprecated, use getLink* and link* methods in HVHtmlBuilder instead.'.
	^String streamContents: [:stream |
		stream
			nextPutAll: '<a href="';
			nextPutAll: url;
			nextPutAll: '">'; nextPutAll: text; nextPutAll: '</a>' ]