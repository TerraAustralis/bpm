events
addSubscription: sub for: anEventType
	(self eventTypes at: anEventType ifAbsentPut: [Set new]) add: sub