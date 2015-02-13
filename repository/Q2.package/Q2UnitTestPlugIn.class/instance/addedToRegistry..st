hooks
addedToRegistry: registryOwner
	super addedToRegistry: registryOwner.
	"Add a subscription to get the wheels turning..."
	self addSubscription: 'Unit test' to: registryOwner for: Q2StageTransitionEvent.
	Q2Log info: 'PlugIn added to registry' sender: #Q2PlugInTests.
	(SoapHttpSetup isRunning) ifTrue: [self soapStarted]