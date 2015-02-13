transactions
removeNamedObject: anObject using: collectionSelector in: target
	self applyTxn: (Q2RemoveObjectFromCollectionTxn object: anObject using: collectionSelector in: target)