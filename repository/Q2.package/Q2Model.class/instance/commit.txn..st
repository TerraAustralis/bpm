transactions-private
commit: aBlock txn: txn 
	"Run a transaction. In case of conflict we try 5 times, then we log it and give up."

	^self 
		commit: aBlock 
		txn: txn objectProviderBlock: [:notification |
			notification newObjectFor: txn ] fixTemps