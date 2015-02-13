statistics
processesOf: aQ2Component

	^(StatisticsSessionClass = self) 
		ifTrue: [aQ2Component currentUser processes]
	ifFalse: [StatisticsSessionClass processes].