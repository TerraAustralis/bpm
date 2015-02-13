set and get
keysFor: selector
	^model target perform: (selector, 'Keys') asSymbol