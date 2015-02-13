subscriptions
removeProcessSubscription: aSubscription
	^self processSubscriptions remove: (self removeObjectById: aSubscription)