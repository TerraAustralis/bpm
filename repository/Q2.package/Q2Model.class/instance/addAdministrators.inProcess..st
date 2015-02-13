transactions
addAdministrators: aCollection inProcess: aProcess
	self applyTxn: (Q2AddAdministratorsTxn process: aProcess users: aCollection)