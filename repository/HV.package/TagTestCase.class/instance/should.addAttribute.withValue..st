accessing
should: code addAttribute: attribute withValue: value 
	| base |
	code value.
	base := self firstElement.
	self assert: (base attributes at: attribute ifAbsent: [self fail]) = value