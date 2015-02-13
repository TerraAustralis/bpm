as yet unclassified
doCreateProcessNamed:    newName
	 
	self applyTxn: (Q2CreateProcessTxn new
						newName: newName)