tests
testAnchorToParent
	canvas anchor toParent; with: [].
	self assertTagName: #a.
	self assertAttribute: 'href' isEqualTo: 'http://localhost.localdomain/'.