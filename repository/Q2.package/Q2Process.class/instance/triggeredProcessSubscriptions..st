events
triggeredProcessSubscriptions: anEvent
	^self processSubscriptions select: [:each | each isTriggeredBy: anEvent]