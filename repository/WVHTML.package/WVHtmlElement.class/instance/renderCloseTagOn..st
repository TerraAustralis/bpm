rendering
renderCloseTagOn: html 
	html encodeText: '</'.
	html spanClass: self cssClass with: [html encodeText: self name].
	html encodeText: '>'.