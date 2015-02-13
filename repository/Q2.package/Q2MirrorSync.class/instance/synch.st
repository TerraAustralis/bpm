render
synch
	"Perform a synch. Return false if we have conflicts in need of resolving, true if we are up to date. (Die on error (currently))
	1. update
	2. send local txns
	3. [restore local snapshot
	  download and install txns
	  create local snapshot]"

	Q2Log debug: 'Mirror synch begins'.
	self update ifFalse: [ ^false ].
	self model transactionLog isEmpty ifFalse: [
		| localTxns |
		localTxns := (Q2TxnSerializer on: self model transactionLog)
			compress: true;
			serialize.
		(Q2Object uploadMirrorTransactions: localTxns) ifFalse: [ ^false ].
		self class restoreLocalSnapshot ].
	self model applyPendingTxns ifFalse: [ ^false ].
	self class createLocalSnapshot.
	Q2Log debug: 'Mirror synch ready'.
	^true