events
addEvent: anEventType
	eventClasses ifNil: [eventClasses := OrderedCollection new].
	eventClasses add: anEventType