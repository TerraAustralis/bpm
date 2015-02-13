events
triggeredUserSubscriptions: anEvent
	| userSubs |
	"Only use the process' user subscriptions if the event does not tell us which users to use."
	userSubs := (anEvent users) ifNil: [self subscriptionsFor: anEvent class] ifNotNil: [#()].
	^userSubs select: [:each | each isTriggeredBy: anEvent]