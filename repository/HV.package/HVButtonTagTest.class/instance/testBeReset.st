as yet unclassified
testBeReset
	self
		should:
			[self tag
				beReset;
				with: []]
		addAttribute: 'type'
		withValue: 'reset'