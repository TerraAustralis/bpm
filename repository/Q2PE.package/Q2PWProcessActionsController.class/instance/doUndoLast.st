as yet unclassified
doUndoLast

	self applyTxn: (Q2UndoTxn undo: history last).
	history removeLast.