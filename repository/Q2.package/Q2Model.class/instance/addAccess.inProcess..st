transactions
addAccess: aCollection inProcess: aProcess
	self applyTxn: (Q2AddAccessTxn process: aProcess users: aCollection)