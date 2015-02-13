set and get
valuesFor: selector
	^model target perform: (selector, 'Values') asSymbol