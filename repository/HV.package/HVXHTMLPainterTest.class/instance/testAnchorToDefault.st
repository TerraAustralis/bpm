tests
testAnchorToDefault
	canvas anchor toDefault; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: request url.