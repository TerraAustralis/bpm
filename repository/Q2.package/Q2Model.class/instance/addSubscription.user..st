transactions
addSubscription: aSubscription user: aUser
	self applyTxn: (Q2AddSubscriptionTxn subscription: aSubscription user: aUser)