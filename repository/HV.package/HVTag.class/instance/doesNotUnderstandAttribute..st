error handling
doesNotUnderstandAttribute: aString
	^ (HVAttributeNotUnderstood
		tag: self
		attribute: aString) signal