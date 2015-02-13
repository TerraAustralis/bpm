loading
timeToLoad
	"Load the object with updates if we have a loader and it is time to load."

	| now |
	now := Q2TimeStamp now asInteger.
	(now > (lastLoad + loadInterval)) ifTrue: [
		lastLoad := now.
		^true].
	^false.