transactions
modifySubscription: aFormBuffer 
	self applyTxn: (Q2ModifySubscriptionTxn formBuffer: aFormBuffer)