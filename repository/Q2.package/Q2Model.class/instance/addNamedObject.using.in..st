transactions
addNamedObject: anObject using: collectionSelector in: target
	self applyTxn: (Q2AddNamedObjectTxn object: anObject using: collectionSelector in: target)