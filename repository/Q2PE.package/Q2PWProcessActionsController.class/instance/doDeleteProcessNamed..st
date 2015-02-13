as yet unclassified
doDeleteProcessNamed:    newName
	 
	self applyTxn: (Q2DeleteProcessTxn new
						newName: newName)