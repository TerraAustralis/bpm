transactions
apply
  "Perform the txn. Delete the alarm"

  deletedAlarm case deleteAlarmById: deletedAlarm id.
  Q2Session current model removeAlarmFromMagmaCollection: deletedAlarm