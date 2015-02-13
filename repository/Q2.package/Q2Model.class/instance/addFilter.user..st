transactions
addFilter: aFilter user: aUser
	self applyTxn: (Q2AddFilterTxn filter: aFilter user: aUser)