mock actions
allTransactionsFrom: periodStart to: periodEnd
"returns an OrderedCollection containing all the transactions
applyed to any case during the time period specified"
	| transactions |

	transactions := OrderedCollection new.
	processes do: [:proc |
		proc cases do: [:case |
			case transactions do: [:txn |
				((periodStart <= txn timestamp) and: [txn timestamp < periodEnd]) ifTrue: [
					transactions add: txn].
				].
			].
		].
	^transactions.