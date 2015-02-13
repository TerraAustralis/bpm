cases
addTimeStamps: case  periodStart: startTimeStamp endPeriod: endTimeStamp
"Cronologically and uniformly assign time stamps over list of transactions of case"
	| transactions nowTimeStamp timeStampInc |

	transactions := case transactions.
	nowTimeStamp := startTimeStamp.
	timeStampInc := (endTimeStamp - startTimeStamp) / (transactions size).
	transactions do: [:txn |
		txn timestampCreated: nowTimeStamp.
		nowTimeStamp := nowTimeStamp + timeStampInc.
		].