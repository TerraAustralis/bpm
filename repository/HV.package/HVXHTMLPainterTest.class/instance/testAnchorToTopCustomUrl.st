tests
testAnchorToTopCustomUrl
	canvas anchor toTop: 'foo'; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: 'http://localhost.localdomain/foo'.