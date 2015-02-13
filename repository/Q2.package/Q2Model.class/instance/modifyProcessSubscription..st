transactions
modifyProcessSubscription: aFormBuffer 
	self applyTxn: (Q2ModifyProcessSubscriptionTxn formBuffer: aFormBuffer)