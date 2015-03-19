tests
testAnchorToLocal
	canvas anchor toLocal: 'test'; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: request url, 'test'.