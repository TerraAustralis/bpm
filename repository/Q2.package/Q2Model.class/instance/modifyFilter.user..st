transactions
modifyFilter: aFilter user: aUser
	self applyTxn: (Q2ModifyFilterTxn filter: aFilter user: aUser)