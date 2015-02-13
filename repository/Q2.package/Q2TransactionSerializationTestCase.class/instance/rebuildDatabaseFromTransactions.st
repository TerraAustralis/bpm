databases
rebuildDatabaseFromTransactions
	self recreateEmptyDatabase.
	((Q2TxnDeserializer on: serializedTransactions)
		decompress: true;
		deserialize) do: [ :each |
			Q2Session current model 
				reApplyTxn: (each reconnectIn: Q2Session current model) ]