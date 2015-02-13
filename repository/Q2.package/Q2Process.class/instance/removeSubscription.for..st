events
removeSubscription: subs for: anEventType
	self eventTypes at: anEventType ifPresent: [:value | value remove: subs]