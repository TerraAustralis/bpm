as yet unclassified
putNotificationsIn: aNotificationTable
	| users |
	users := self users.
	users ifNotNil: [users do: [:user |
		user putNotificationsIn: aNotificationTable for: self]].
	self process ifNotNil: ["Only possible if the events' primary belongs to a specific process"
		self process putNotificationsIn: aNotificationTable for: self]