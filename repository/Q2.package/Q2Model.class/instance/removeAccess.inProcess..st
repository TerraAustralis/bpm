transactions
removeAccess: aCollection inProcess: aProcess
	self applyTxn: (Q2RemoveAccessTxn process: aProcess users: aCollection)