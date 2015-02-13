serialization
serializeTransactions

	self flag: #q2TxnLogTodo. " broken "
	serializedTransactions := (Q2TxnSerializer on: Q2Session current model transactionLog)
		compress: true;
		serialize