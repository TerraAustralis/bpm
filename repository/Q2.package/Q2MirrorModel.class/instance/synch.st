as yet unclassified
synch
	"Perform a synch. Return false if we have conflicts in need of resolving, true if we are up to date.
	This is only run on a mirror:
		1. Download all master txns that we don't have yet, and try to apply them.
		2. If we have a conflict, return false to get it resolved first.
		3. If all pending are freshly applied, we upload all mirror transactions we have.
		4. Download and apply all master txns again, getting our own back."

	self flag: #q2MirroringTodo. "Rewrite method"

	self applyPendingTxns ifFalse: [^false].
	transactionLog isEmpty
		ifFalse: [
			self uploadMirrorTxns.
			^self synch].
	^true