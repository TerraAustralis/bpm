initialize-release
initialize
	super initialize.
	isClosed := isNew := false.
	transitions := OrderedCollection new.
	enterCriteria := OrderedCollection new.
	exitCriteria := OrderedCollection new