tests
testAnchorToParentCustomUrl
	canvas anchor toParent: 'test'; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: 'http://localhost.localdomain/test'.