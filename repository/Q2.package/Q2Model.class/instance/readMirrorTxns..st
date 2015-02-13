transactions-sync
readMirrorTxns: txns
	"Read and apply mirror transactions on master."

	[[txns do: [:txn | self reApplyTxn: (txn reconnectIn: self)]]
		on: Error do: [:ex | self halt. ^false].
	] ensure: [self runEvents].
	^true