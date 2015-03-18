control
setupServer
  (GemServerRegistry gemServerNamed: self schedulerName)
    ifNil: [ Q2SchedulerGemServer register: self schedulerName on: #() ]