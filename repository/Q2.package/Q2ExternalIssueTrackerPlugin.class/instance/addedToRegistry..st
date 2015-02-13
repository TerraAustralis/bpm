hooks
addedToRegistry: registryOwner

	super addedToRegistry: registryOwner. "Always let the super class use the hook"
	self addSubscription: 'External issue tracker' to: registryOwner for: Q2StageTransitionEvent.
	(SoapHttpSetup isRunning) ifTrue: [self soapStarted]