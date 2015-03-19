head
styleLinkWithUrl: urlString
	self attributes
		at: 'rel' put: 'stylesheet';
		at: 'type' put: 'text/css';
		at: 'href' put: urlString.
	self headTag: 'link'