render
update
	"Perform an update. Return false if we have conflicts in need of resolving, true if we are up to date. (Die on error (currently))
	1. backup local txns
	2. [restore local snapshot
	   download and install txns
	   create local snapshot]
	3. install local txns"

	| localTxns |
	Q2Log debug: 'Mirror update begins'.
	Q2Object lastTransactionNumber = self model lastMasterTxnNumber ifTrue: [ 
		Q2Log debug: 'Mirror is up to date'.
		^true ].
	self model transactionLog isEmpty ifFalse: [
		localTxns := (Q2TxnSerializer on: self model transactionLog)
			compress: true;
			serialize.
		self class restoreLocalSnapshot ].
	self model applyPendingTxns ifFalse: [ ^false ].
	self class createLocalSnapshot.
	localTxns ifNotNil: [
		((Q2TxnDeserializer on: localTxns) 
			decompress: true;
			deserialize) do: [ :each |
				self model reApplyTxn: (each reconnectIn: self model) ] ].
	Q2Log debug: 'Mirror updated'.
	^true