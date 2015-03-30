as yet unclassified
reschedule
  "This service failed to get an exclusive window or had not finished
	running since last cycle - reschedule in near future for new attempt."

  nextRun := Now
    + (self settings at: #'rescheduleSeconds' section: 'scheduler') asInteger