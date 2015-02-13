run tests
runTestForDays: numDays numCases: numCases numTxns: numTxns  seed: seed

	^self	runTestForDays: numDays
			numCases: numCases
			numTxns: numTxns 
			probNew: self defaultProbNew
			probClosed: self defaultProbClosed
			probResponsible: self defaultProbResponsible
			seed: seed