control
stop
  "Q2Scheduler stop"

  SchedulerProcess
    ifNotNil: [ 
      SchedulerProcess terminate.
      SchedulerProcess := nil ].
  self terminateAllServices.
  self clearServices.
  (GemServerRegistry gemServerNamed: self schedulerName)
    ifNotNil: [ GemServerRegistry stopGemServer: self schedulerName ].
  Q2Log info: 'Scheduler stopped.'