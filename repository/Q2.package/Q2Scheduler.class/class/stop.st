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
    ifNotNil: [ :gemServer | 
      gemServer
        stopGems;
        unregister ].
  Q2Log info: 'Scheduler stopped.'