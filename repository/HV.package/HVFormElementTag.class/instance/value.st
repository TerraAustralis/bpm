attributes
value
	^ canvas request isPostRequest
		ifTrue: [canvas request postFields at: self name]
		ifFalse: [self]