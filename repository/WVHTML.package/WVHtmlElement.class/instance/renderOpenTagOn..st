rendering
renderOpenTagOn: html 
	html encodeText: '<'.
	html spanClass: self cssClass with: [html encodeText: self name].
	
	attributes renderOn: html.
	
	self shouldPrintCloseTag 
		ifFalse: [html space; encodeText: '/'].
	html encodeText: '>'.