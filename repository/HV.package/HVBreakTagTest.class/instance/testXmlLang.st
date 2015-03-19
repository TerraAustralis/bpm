tests
testXmlLang
	self
		shouldnt: [self tag xmlLang: 'test']
		understandAttribute: 'xml:lang'