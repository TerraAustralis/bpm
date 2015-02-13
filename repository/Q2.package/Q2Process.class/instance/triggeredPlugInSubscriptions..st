events
triggeredPlugInSubscriptions: anEvent
	^self plugInSubscriptions select: [:each | each isTriggeredBy: anEvent]