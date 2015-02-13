transactions
activateUser: aUser 
	self applyTxn: (Q2ActivateUserTxn user: aUser)