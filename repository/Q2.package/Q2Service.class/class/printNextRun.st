as yet unclassified
printNextRun
	| now |
	now := Q2TimeStamp now.
	^	'Now: ', now asDateAndTimeString,
		' Next: ', (Q2TimeStamp fromAbsoluteSeconds: nextRun) asDateAndTimeString,
		' Remaining seconds: ', (nextRun asInteger - now asInteger) asString