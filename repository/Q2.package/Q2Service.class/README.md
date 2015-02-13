This is a scheduled regular service run by Q2Scheduler. The simplest implementation is a subclass that implements #do and #interval. The scheduler manages by default all subclasses of Q2Service so there is no registration step.

#interval should return the number of seconds until the service should be run again, default implementation returns 20 seconds.

#do should perform the job and will be run in its own background process by the scheduler so the service does not need to fork by itself.

If the service implements #isExclusive returning true then the scheduler will make sure the service gets to run on its own without any other services running concurrently. It will wait for a window of opportunity for a certain amount of time and be rescheduled in the near future if the window does not open. A different approach would be to block all other pending services and patiently wait for the running ones to finish - but then other more pressing regular services will not be able to run.

If the service is still running when the interval has gone by and it is time to run again it will skip (and log it) and reschedule in the near future.