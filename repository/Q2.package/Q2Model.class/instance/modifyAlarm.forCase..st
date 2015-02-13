transactions
modifyAlarm: anAlarm forCase: aCase
	self applyTxn: (Q2ModifyAlarmTxn alarm:anAlarm case:aCase)