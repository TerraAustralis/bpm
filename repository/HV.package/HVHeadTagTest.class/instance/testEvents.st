tests
testEvents
	self
		should: [self tag onClick: 'test']
		raise: MessageNotUnderstood