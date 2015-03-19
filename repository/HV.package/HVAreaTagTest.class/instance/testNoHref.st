as yet unclassified
testNoHref
	self
		should:
			[self tag
				noHref;
				with: []]
		addAttribute: 'nohref'
		withValue: 'nohref'