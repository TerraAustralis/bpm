as yet unclassified
testRefresh
	self
		should:
			[self tag
				refresh;
				content: '']
		addAttribute: 'http-equiv'
		withValue: 'refresh'