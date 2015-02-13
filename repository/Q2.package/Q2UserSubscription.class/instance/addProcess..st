as yet unclassified
addProcess: aProcess
	(user notNil and: [user canAccess: aProcess])
		ifTrue: [processes add: aProcess]
		ifFalse: [self error: 'Cannot add process before user is set.']