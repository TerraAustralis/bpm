transactions
removeAlarm: anAlarm fromCase: aCase
	self applyTxn: (Q2RemoveAlarmTxn alarm:anAlarm fromCase:aCase)