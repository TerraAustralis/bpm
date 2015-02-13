events
flushEvents
	| result |
	result := events.
	events := OrderedCollection new.
	^result