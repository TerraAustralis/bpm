accessing
case: anObject tab: aTab
	self case: anObject.
	aTab ifNotNil: [editor selectTab: aTab]