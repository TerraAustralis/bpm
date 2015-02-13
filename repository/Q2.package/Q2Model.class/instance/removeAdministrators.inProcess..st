transactions
removeAdministrators: aCollection inProcess: aProcess
	self applyTxn: (Q2RemoveAdministratorsTxn process: aProcess users: aCollection)