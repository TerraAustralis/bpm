actions
commit
	self isValid
		ifFalse: [^false]
		ifTrue: [self commitCache. ^true]