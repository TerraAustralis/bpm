subscriptions
addProcessSubscription: aSubscription
	aSubscription process: self.
	^self processSubscriptions add: (self addObjectById: aSubscription)