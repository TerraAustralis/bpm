calculating
partitionTxnsFrom: periodStart to: periodEnd
"Create and return a dictionary with processes for keys such that
the value associated with any key k is an OrderedCollection 
containing all the transactions applyed to the cases of key  k  listed
in cronological order.
"
		| txns processes processTxns |

	txns := sessionClass allTransactionsFrom: periodStart to: periodEnd.
	processes := sessionClass processes.
	processTxns := Dictionary new.
	processes do: [:pros |
		processTxns at: pros put: (OrderedCollection new)].
	txns do: [:txn |
		txn isUsefulForCaseStatistics ifTrue: [
			(processTxns at: (txn process)) add: txn] ].
	^processTxns.