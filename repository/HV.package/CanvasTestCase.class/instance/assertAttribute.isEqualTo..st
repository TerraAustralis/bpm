accessing
assertAttribute: attribute isEqualTo: value 
	self 
		assertAttribute: attribute
		ofTag: self firstElement
		isEqualTo: value