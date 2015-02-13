methods
fromAbsoluteSeconds: seconds
	| aTimeStamp |
	aTimeStamp := self new.
	aTimeStamp absoluteSeconds: seconds.
	^aTimeStamp.