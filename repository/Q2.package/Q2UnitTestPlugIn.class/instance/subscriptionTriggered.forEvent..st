hooks
subscriptionTriggered: aSubscription forEvent: anEvent
	| retVal |
	super subscriptionTriggered: aSubscription forEvent: anEvent.

	Q2Log info: 'PlugIn subscription triggered.' sender: #Q2PlugInTests.
	retVal := self class callServer: #'Q2UnitTestPlugIn_unitTest' asSymbol with: {}. "Call myself"
	Q2Log info: retVal sender: #Q2PlugInTests.