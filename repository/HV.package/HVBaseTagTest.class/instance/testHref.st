tests
testHref
	self should:
		[(self tag)
			href: 'test']
	addAttribute: 'href'
	withValue: 'test'