transactions
addSubscription: aSubscription process: aProcess
	self applyTxn: (Q2AddProcessSubscriptionTxn subscription: aSubscription process: aProcess)