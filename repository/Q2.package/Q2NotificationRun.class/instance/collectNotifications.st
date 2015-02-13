events
collectNotifications
	| userNotifications |
	userNotifications := Q2NotificationTable new.
	events do: [:event | event putNotificationsIn: userNotifications].
	^userNotifications