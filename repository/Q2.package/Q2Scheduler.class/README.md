This is a scheduler that runs in its own process, wakes up every 2 seconds and runs scheduled services (Q2Service subclasses).
The scheduler and its services are implemented on the class side only (singletons). The scheduler is started using:

	 Q2Scheduler start

...and you also have stop/suspend/resume. See Q2Service for details on how to write a service.
