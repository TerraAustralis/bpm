tests
testAnchorToTop
	canvas anchor toTop; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: 'http://localhost.localdomain/'.