as yet unclassified
apply

	toStage := fromStage workflow newStage: self newStageName.

	self transactions add: (transition := Q2CreateTransitionTxn new 
		from: fromStage; 
		to: toStage;
		newName: self newTransitionName).

	transition apply.

	 self setSelection: toStage.