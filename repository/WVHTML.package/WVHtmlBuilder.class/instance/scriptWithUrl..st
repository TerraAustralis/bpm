head
scriptWithUrl: urlString
	self attributes
		at: 'language' put: 'javascript';
		at: 'src' put: urlString.
	self headTag: 'script'.