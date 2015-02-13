partitioning txns
partitionTxns: periodTxns byCases: cases
"Partition transactions according to which case they were applied"
	| caseTxns |

	caseTxns := Dictionary new.
	cases do: [:case |
		caseTxns add: (Association key: case value: OrderedCollection new)].
	periodTxns do: [:txn |
		(caseTxns at: (txn case)) add: txn].
	^caseTxns