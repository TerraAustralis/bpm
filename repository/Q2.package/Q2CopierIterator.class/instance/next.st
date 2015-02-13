iterating
next
	self maintainStacksAccordingToCurrentParent.
	stack ifNotEmpty: [ self visit: stack last ]