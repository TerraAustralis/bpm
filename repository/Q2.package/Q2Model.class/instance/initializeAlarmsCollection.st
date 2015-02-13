initialize-release
initializeAlarmsCollection
	alarms := self dbSession newDBCollection.
	self flag: #GemStone.
	"this will not work in GS
	
	self dbSession addIntegerIndex: #alarmSeconds on: alarms.
	"