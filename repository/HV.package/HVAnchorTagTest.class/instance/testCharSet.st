tests
testCharSet
	self should: [self tag charSet: 'test'; with: []] addAttribute: 'charset' withValue: 'test'