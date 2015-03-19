as yet unclassified
testDeferred
	self
		should:
			[self tag
				deferred;
				with: []]
		addAttribute: 'defer'
		withValue: 'defer'