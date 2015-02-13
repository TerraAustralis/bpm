as yet unclassified
isPending
	"Check if it is time to run #do. Override #interval to define
	the amount of seconds between initiations of runs.
	We also recalculate next time to run."
 
	| shouldRun |
	shouldRun := Now > nextRun.
	shouldRun ifTrue: [
		"Below makes sure the interval is independent of any lag added by the scheduler,
		If the service interval ends up lagging anyway we warn and schedule an immediate run."
		nextRun := nextRun + self interval + 7 atRandom - 4. "distribute at +-3 seconds"
		nextRun < Now ifTrue: [
			Q2Log notice: 'Service interval lagged: ', (Now - nextRun) asString, ' seconds.'.
			nextRun := Now]].
	^shouldRun