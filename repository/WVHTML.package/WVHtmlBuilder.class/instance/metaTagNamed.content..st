head
metaTagNamed: nameString content: contentString
	self attributes
		at: 'name' put: nameString;
		at: 'content' put: contentString.
	self headTag: 'meta'.