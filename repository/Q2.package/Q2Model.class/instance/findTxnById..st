cases
findTxnById: id
	"Find the transaction."

	self flag: #q2TxnLogTodo. " move this into Q2TransactionLog"

	^transactionLog readUnique: #id at: id