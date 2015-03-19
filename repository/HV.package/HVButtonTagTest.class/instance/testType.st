as yet unclassified
testType
	self
		should:
			[self tag
				type: 'button';
				with: []]
		addAttribute: 'type'
		withValue: 'button'