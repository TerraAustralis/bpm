control
stop
	"Q2Scheduler stop"

	SchedulerProcess ifNotNil: 
			[SchedulerProcess terminate.
			SchedulerProcess := nil].
	self terminateAllServices.
	self clearServices.
	Q2Log info: 'Scheduler stopped.'