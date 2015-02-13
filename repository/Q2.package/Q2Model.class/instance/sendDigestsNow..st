services
sendDigestsNow: now

	notificationsTable keysAndValuesDo: [:user :items |
		((user settings digestSubscriptions not) or: 
		[user settings digestNextSend isNil] or:
		[user settings digestNextSend <= now])
			ifTrue: [
				Q2Log debug: ('Queue a mail to user: ', user name).
				self commit: [
					self push: (user prepareNotifications: items) forService: Q2NotificationSenderService.
					notificationsTable pendingNotifications removeKey: user.
					user settings digestSubscriptions
						ifTrue: [user settings digestNextSend: (now + (user settings digestTime * 3600))]
						ifFalse: [user settings digestNextSend: 0]]
			] ifFalse: [
				Q2Log debug: items size asString, ' notification(s) held for user: ', user name, '. ',
						(user settings digestNextSend - now) asString,
						' seconds to next digest'
			]
	]