logging
time: aBlock debug: aString
	"Shorthand for logging a timed block."

	| ms |
	ms := aBlock timeToRun.
	self instance debug: aString, ': ', ms printString, ' ms'