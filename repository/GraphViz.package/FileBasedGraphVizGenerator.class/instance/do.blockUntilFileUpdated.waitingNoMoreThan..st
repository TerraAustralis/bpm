external
do: aBlock blockUntilFileUpdated: file waitingNoMoreThan: duration 

	| originalModTime returnValue stopwatch |
	originalModTime _ self modificationTimeOf: file.
	returnValue _ aBlock value.
	
	stopwatch _ Stopwatch new.
	stopwatch activate.
	
	[stopwatch duration < duration] whileTrue:
		[(self modificationTimeOf: file) ifNotNilDo:
			[:latestModTime | | testfile |

			"if file is openable for writing then probably the external process is done"
			testfile _ FileStream fileNamed: file.
			testfile ifNotNil:
				[testfile close.				
				originalModTime
					ifNil: [^ returnValue] "file did not exist before and now exists"
					ifNotNil: [latestModTime > originalModTime ifTrue: [^ returnValue]]]].
		
		40 milliSeconds asDelay wait].
	
	self error: 'Timeout expired waiting for ', file, ' to be updated!'