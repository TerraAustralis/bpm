events
run
	| userNotifications aSize |
	userNotifications := self collectNotifications.
	aSize := userNotifications pendingNotifications inject: 0
				into: [:sum :each | sum + each size].
	aSize > 0 
		ifTrue: 
			[Q2Log 
				info: aSize asString , ' notification(s) collected for ' 
						, userNotifications pendingNotifications size asString , ' user(s).']
		ifFalse: [].
	userNotifications keysAndValuesDo: 
		[:user :notifications | | notificationsToDigest notificationsToSend |
		notifications do: [:each |
		(user settings digestSubscriptions)
			ifFalse: 	["Send all immediately"
				notificationsToDigest := #().
				notificationsToSend := notifications]
			ifTrue: ["Digest the ones not overriding digestion"
				notificationsToDigest := OrderedCollection new.
				notificationsToSend := OrderedCollection new.
				notifications do: [:n | (n subscription overrideDigest)
					ifTrue: [notificationsToSend add: n]
					ifFalse: [notificationsToDigest add: n]]
		].
		notificationsToDigest ifNotEmpty: [self commit: 
			[self model notificationsTable addNotifications: notificationsToDigest for: user]].
		notificationsToSend ifNotEmpty: 
			[self model push: (user prepareNotifications: notificationsToSend)
				forService: Q2NotificationSenderService]]
	].
	^userNotifications	"For tesing"