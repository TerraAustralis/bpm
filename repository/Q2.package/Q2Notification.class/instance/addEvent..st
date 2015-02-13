events
addEvent: anEvent
	events ifNil: [events := Set new].
	events add: anEvent