transactions
apply
	"Perform the txn. Change the existing alarm in place."
 	|originalAlarm |
	originalAlarm := updatedAlarm case findAlarmById: updatedAlarm id.
	updatedAlarm copyValuesTo: originalAlarm.