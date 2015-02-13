initialize-release
children
	^ editor ifNotNil: [ super children add: editor; add: noteview ; add: alarmview; yourself ]
		ifNil: [ super children ]