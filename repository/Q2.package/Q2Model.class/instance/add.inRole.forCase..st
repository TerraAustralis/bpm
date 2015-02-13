transactions
add: aUser inRole: aRole forCase: aCase 

	self applyTxn: (Q2AddUserInRoleTxn new user: aUser role: aRole case: aCase).
	self runEvents.