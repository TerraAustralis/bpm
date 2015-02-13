as yet unclassified
makeGraph
	(currentProcess = nil) ifTrue: [self currentProcess: model processes first].
	graph add: model name. "the User"

	self addUserCategories.
	self addProcessCategories.
	self addPermissions.