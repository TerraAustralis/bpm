transactions
removeSubscription: aSubscription process: aProcess
	self applyTxn: (Q2RemoveProcessSubscriptionTxn subscription: aSubscription process: aProcess)