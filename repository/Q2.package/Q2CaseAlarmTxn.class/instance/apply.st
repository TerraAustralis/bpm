transactions
apply
  "Perform the txn."

  case addAlarm: alarm.
  Q2Session current model addAlarmToMagmaCollection: alarm