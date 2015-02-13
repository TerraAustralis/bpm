testing
isTriggeredBy: anEvent forUser: aUser
	^(self includesUser: aUser) and:
	[self isTriggeredBy: anEvent]