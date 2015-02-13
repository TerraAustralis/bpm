as yet unclassified
resultOf: aTxn
	aTxn error
			ifNotNil: [^aTxn error ]
			ifNil: [^aTxn result ]