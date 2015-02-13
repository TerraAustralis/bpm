events
subscriptionsFor: anEventType
	^(self eventTypes at: anEventType ifAbsent: [#()])