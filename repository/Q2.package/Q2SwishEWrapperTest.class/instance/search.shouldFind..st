helpers
search: aString shouldFind: aCollection

	self should: (self search: aString) asSet = aCollection asSet