run tests
runTestSimpleClosed: numCases numTxns: numTxns periodStart: startTimeStamp endPeriod: endTimeStamp probNew: probNew probClosed: probClosed probResponsible: probResponsible seed: seed

	self	runTestSimpleClosed: numCases 
		numTxns: numTxns
		periodStart:startTimeStamp
		endPeriod: endTimeStamp
		probNew: probNew
		probClosed: probClosed
		probResponsible: probResponsible
		seed: seed skip: 0