transactions-private
runEvents
	| events |
	events := self session flushEvents.
	(self isMirror) ifFalse: [self push: (Q2NotificationRun forEvents: events) forService: Q2NotificationRunService]