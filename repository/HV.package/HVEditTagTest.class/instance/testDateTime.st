as yet unclassified
testDateTime
	self
		should:
			[self tag
				dateTime: 'test';
				with: []]
		addAttribute: 'datetime'
		withValue: 'test'