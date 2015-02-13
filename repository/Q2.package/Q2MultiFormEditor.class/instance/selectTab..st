tabs
selectTab: aTab
	^(tabBook hasTab: aTab) ifTrue: [tabBook select: aTab]