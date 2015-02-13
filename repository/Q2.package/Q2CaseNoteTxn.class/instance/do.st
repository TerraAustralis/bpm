initialize-release
do
	"Perform the txn the first time. We need to copy
	the note first and keep that copy in the txn for later
	replaying of this txn."

	| copy |
	copy := note copyForTxn.
	self apply.
	note := copy