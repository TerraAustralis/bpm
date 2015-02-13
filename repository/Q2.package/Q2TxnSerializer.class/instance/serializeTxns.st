serialize-private
serializeTxns
	"Prepare an OrderedCollection with disconnected txns from the model for the mirrorDefinition. Abort and refresh the magmaSession to dissolve the sideeffects of disconnecting."

	| txns |
	txns := mirrorDefinition
		ifNotNil: [ (transactionLog txnsAfter: after) select: [:each | 
			each validInMirror: mirrorDefinition ] ]
		ifNil: [ transactionLog txnsAfter: after ].
	txns := txns collect: [:txn | txn disconnect].
	self serializeTxns: txns.
	Q2Session current dbSession abortAndRefreshAllObjects.