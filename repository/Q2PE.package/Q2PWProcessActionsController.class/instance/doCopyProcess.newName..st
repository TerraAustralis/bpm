as yet unclassified
doCopyProcess: aProcess newName:    newName
	 
	self applyTxn: (Q2CopyProcessTxn new
						newName: newName;
						oldProcess: aProcess)