alarms
deleteAlarmById: anID

	^alarms removeAllSuchThat: [:l | l id = anID]