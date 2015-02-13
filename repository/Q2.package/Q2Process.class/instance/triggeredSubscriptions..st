events
triggeredSubscriptions: anEvent
	"Only use the process' user subscriptions if the event does not tell us which users to use."

	| userSubscriptions |
	userSubscriptions := anEvent users ifNotNil: [self subscriptionsFor: anEvent class] ifNil: [#()].
	^(self processSubscriptions addAll: userSubscriptions) 
		select: [:each | each isTriggeredBy: anEvent]