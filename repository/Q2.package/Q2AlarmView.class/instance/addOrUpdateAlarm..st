render
addOrUpdateAlarm: anAlarm
	|oldAlarm|

	oldAlarm := case findAlarmById: anAlarm id.
	
	oldAlarm
		ifNil:[self model addAlarm: anAlarm toCase: case.]
		ifNotNil:[self model modifyAlarm: anAlarm forCase: case]