events
putNotificationsIn: aNotificationTable for: anEvent
	"For all triggered subscriptions, add a notification in the notification table."

	(self triggeredSubscriptions: anEvent) do: [:sub |
		aNotificationTable addNotification: (Q2Notification for: sub with: anEvent) for: self
	]