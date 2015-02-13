events
notifyPlugIns: anEvent
	(self triggeredPlugInSubscriptions: anEvent) do: [:each |
		each plugIn subscriptionTriggered: each forEvent: anEvent]