accessing
setupControls
	(setupControls isNil or: 
		[true  "Someday we must decide if we want to update controls every time. For now its needed for when we run startStatisticsTest"]) 
	ifTrue: [
		setupControls _ Q2StatisticsSetupGUI new].
	^setupControls