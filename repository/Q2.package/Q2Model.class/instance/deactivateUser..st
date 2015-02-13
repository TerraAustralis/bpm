transactions
deactivateUser: aUser 
	self applyTxn: (Q2DeactivateUserTxn user: aUser)