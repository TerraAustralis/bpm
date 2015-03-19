as yet unclassified
testHref
	self
		should:
			[self tag
				href: 'test';
				with: []]
		addAttribute: 'href'
		withValue: 'test'