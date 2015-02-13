as yet unclassified
undo

	newTransition undo.
	self fromStage workflow removeStage:  middleStage.
		
	transition from: fromStage.

	 self setSelection: transition.