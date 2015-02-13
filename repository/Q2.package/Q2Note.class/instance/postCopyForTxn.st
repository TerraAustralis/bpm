synch
postCopyForTxn
	"Copy this note for storage in a txn."

	categories _ categories copy. "we want to refer to the categories as they were"
	replies _ nil "when created there are no replies"