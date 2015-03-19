as yet unclassified
testBeButton
	self
		should:
			[self tag
				beButton;
				with: []]
		addAttribute: 'type'
		withValue: 'button'