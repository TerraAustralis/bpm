control
start
  "Q2Scheduler start"

  Q2GemStonePlatform beginTransaction.
  self stop.
  Q2GemStonePlatform commitTransaction.
  self loop.	"does not return"	"SchedulerProcess := [ self loop ] forkAt: Processor userSchedulingPriority."
  Q2Log info: 'Scheduler started.'