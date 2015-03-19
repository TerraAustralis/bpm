as yet unclassified
testOnUnload
	self should:
		[self tag
			onUnload: 'test';
			with: []]
	addAttribute: 'onunload'
	withValue: 'test'