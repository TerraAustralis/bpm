as yet unclassified
doRenameItem: processStageOrTransition to: newName
	 
	self applyTxn: (Q2RenameProcessItemTxn new
						item: processStageOrTransition; 
						newName: newName )