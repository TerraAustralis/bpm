tests
testMultipleForms
	canvas form with: [].
	canvas form with: [].
	self assertAttribute: 'id' isEqualTo: '1'.
	self assertAttribute: 'id' ofTag: self elements second isEqualTo: '2'