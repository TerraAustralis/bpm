hooks
subscriptionTriggered: aSubscription forEvent: anEvent
	| externalSoapServer |
	super subscriptionTriggered: aSubscription forEvent: anEvent.
	"Do something with this event, e.g. make a SOAP call"
	externalSoapServer := self settings at: #externalIssueSoapServer section: #plugIns.
	Q2Log info: 'Subscription triggered ', anEvent asString.
	Q2Log debug: 'Send ping'.
	Q2Log debug: (self class callServer: #q2ping with: {} on: externalSoapServer).