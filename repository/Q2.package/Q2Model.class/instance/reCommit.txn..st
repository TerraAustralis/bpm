transactions-private
reCommit: aBlock txn: txn 
	"Replay a transaction,"

	| objectStream |

	objectStream := txn objectStream.
	[ ^self 
		commit: aBlock 
		txn: txn 
		objectProviderBlock: [:notification | objectStream next ] fixTemps ] 
		on: Q2CurrentUser
		do: [:currentUserNotification |
			currentUserNotification resume: txn user ]