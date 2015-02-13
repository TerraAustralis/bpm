uuids
newUUID
	"Get a new UUID or get one from the current txn so that we
	are replaying exactly the way it happened. We should always
	be in a txn - and if we are not, then the created UUID
	must be tracked in some other way in the txn manually."

	^Q2NewUUID signal.
	"txn := #CurrentTxn binding.
	txn ifNil: [Transcript show: self class; show: 'OOPS, new UUID!';cr. ^UUID new] ifNotNil: [^txn newUUID]"