as yet unclassified
apply

	fromStage := transition from.
	toStage := transition to.

	middleStage := fromStage workflow newStage: self newStageName.

	transition to: middleStage.

	self transactions add: (newTransition := Q2CreateTransitionTxn new 
		from: middleStage; 
		to: toStage;
		newName: self newTransitionName).

	newTransition apply.

	 self setSelection: middleStage