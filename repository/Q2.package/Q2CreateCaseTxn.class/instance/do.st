transactions
do
	"Perform the txn the first time. We need to copy
	the case first and keep that copy in the txn for later
	replaying of this txn."

	| copy |
	copy := case copyForTxn.
	self apply.
	self assert: (case id == copy id).
	case := copy name: case name; yourself