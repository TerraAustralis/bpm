tests
testEvents
	self
		shouldnt: [self tag onClick: 'test']
		understandAttribute: 'onclick'.