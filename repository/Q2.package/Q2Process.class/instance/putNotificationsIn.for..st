events
putNotificationsIn: aNotificationTable for: anEvent
	| eventUsers |
	eventUsers := anEvent users.
	(self triggeredUserSubscriptions: anEvent) do: [:subs |
		subs users do: [:user |
			aNotificationTable addNotification: (Q2Notification for: subs with: anEvent) for: user
		]
	].
	(self triggeredProcessSubscriptions: anEvent) do: [:subs |
		(subs users intersection: eventUsers) do: [:user |
			aNotificationTable addNotification: (Q2Notification for: subs with: anEvent) for: user
		]
	]