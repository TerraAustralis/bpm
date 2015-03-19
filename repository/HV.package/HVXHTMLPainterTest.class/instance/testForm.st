tests
testForm
	canvas form with: [].
	self assertTagName: #form.
	self assertAttribute: 'action' isEqualTo: request url.
	self assertAttribute: 'id' isEqualTo: '1'