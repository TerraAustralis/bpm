tests
setUp
	request := HVMockHttpRequest new.
	request postFields:
		((Dictionary new)
			at: '1-1' put: 'test';
			yourself).
	request post: true.
	request url: 'http://localhost.localdomain/test/'.
	view := HVMockView new.
	view request: request.
	canvas := HVXHTMLPainter
					request: request
					view: view