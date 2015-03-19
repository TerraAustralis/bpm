tests
testHrefLang
	self should:
		[self tag
			hrefLang: 'test';
			with: []]
	addAttribute: 'hreflang'
	withValue: 'test'