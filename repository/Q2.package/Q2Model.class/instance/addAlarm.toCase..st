transactions
addAlarm: anAlarm toCase: aCase
	self applyTxn: (Q2CaseAlarmTxn alarm: anAlarm case: aCase).
	self runEvents.