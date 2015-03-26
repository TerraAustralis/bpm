control
start
  "Q2Scheduler start"

  self stop.
  Q2Service clear.
  self setupServer.	"self loop."	"does not return"	"SchedulerProcess := [ self loop ] forkAt: Processor userSchedulingPriority."
  self startServer.
  Q2Log info: 'Scheduler started.'