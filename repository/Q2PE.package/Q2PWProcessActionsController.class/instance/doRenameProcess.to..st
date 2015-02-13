as yet unclassified
doRenameProcess:  aProcess  to: newName
	 
	self applyTxn: (Q2RenameProcessTxn new
						item: aProcess ; 
						newName: newName;
						oldName: aProcess  name)