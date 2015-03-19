as yet unclassified
testOnLoad
	self should:
		[self tag
			onLoad: 'test';
			with: []]
	addAttribute: 'onload'
	withValue: 'test'