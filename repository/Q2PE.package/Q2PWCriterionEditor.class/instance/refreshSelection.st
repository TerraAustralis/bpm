as yet unclassified
refreshSelection

	self stageOrTransition isStage
	ifTrue: [ 

	enter := self stageOrTransition enterCriteria collect: [:ea | Q2PWCriterionTile for: ea ].
 	exit := self stageOrTransition exitCriteria collect: [:ea | Q2PWCriterionTile for: ea ].
 
	]
	ifFalse:  [

	transition := self stageOrTransition criteria collect: [:ea | Q2PWCriterionTile for: ea ].

	].

	menu := Q2WorkflowCriterion allSubclasses collect: [ :ea | Q2PWCriterionTile for: ea new ].