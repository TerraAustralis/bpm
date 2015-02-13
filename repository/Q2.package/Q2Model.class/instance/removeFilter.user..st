transactions
removeFilter: aFilter user: aUser
	self applyTxn: (Q2RemoveFilterTxn filter: aFilter user: aUser)