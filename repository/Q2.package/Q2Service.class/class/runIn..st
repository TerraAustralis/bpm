as yet unclassified
runIn: seconds
	"Set service to start in a number of seconds."

	self activate.
	nextRun := self calculateNow + seconds