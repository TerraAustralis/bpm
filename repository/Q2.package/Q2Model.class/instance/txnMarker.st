transactions-services
txnMarker
	"Return a marker for the current state.
	This can be compared with #= later to see if no transactions have been made."

	^transactionLog size