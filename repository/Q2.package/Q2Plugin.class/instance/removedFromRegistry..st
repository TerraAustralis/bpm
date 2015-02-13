hooks
removedFromRegistry: registryOwner
	self subscriptions do: [:each | each process removePlugInSubscription: each]