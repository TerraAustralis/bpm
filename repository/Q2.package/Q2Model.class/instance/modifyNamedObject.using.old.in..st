transactions
modifyNamedObject: anObject using: collectionSelector old: oldObject in: target
	self applyTxn: (Q2ModifyNamedObjectTxn object: anObject using: collectionSelector old: oldObject in: target)