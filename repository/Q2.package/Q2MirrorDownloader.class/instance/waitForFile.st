as yet unclassified
waitForFile

	| loops delay milliseconds |
	self flag: #q2todo. " create Q2Win32Tools "

	milliseconds := 30000.
	delay := 20. "Wait 20 ms between checks."
	loops := (milliseconds / delay) asInteger.
	[(FileDirectory default fileExists: self targetPath) not] whileTrue: 
		[((loops := loops - 1) < 0) ifTrue: [Q2Error error: 'Wait for file failed.'].
		(Delay forMilliseconds: 20) wait].