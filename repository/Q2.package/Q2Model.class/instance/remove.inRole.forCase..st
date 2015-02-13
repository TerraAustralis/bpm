transactions
remove: aUser inRole: aRole forCase: aCase 

	self applyTxn: (Q2RemoveUserInRoleTxn new user: aUser role: aRole case: aCase).
	self runEvents.