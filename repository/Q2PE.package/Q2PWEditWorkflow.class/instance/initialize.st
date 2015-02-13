initialization
initialize
 
	super initialize.

	tabBook := Q2TabBook parent: self.
	"self registerForBacktracking.
	self session registerObjectForBacktracking: tabBook."
 
	stages := self listBuildStages.
	transitions := self listBuildTransitions.
	"criteria   :=  Q2PWCriterionEditor parent: self."
	 
	script := Q2PWScript parent: self.
	
	tabBook 
		add: stages label: 'Stages';
		add: transitions label: 'Transitions';
		"add: criteria   label: 'Criteria';"
		"add: script label: 'Script';"
		yourself.

	tabBook select: 'Stages'.

	self addDefaultButtonsFor: self.