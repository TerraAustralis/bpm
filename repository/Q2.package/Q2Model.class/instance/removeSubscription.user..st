transactions
removeSubscription: aSubscription user: aUser
	self applyTxn: (Q2RemoveSubscriptionTxn subscription: aSubscription user: aUser)