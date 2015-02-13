testing
isTriggeredBy: anEvent
	^(self eventClasses anySatisfy: [:each | each = anEvent class]) and:
	[self includesProcess: anEvent process] and: 
	[(self filter isNil) or: [self filter evaluate: anEvent primaryObject]]