as yet unclassified
update
	"Perform an update. Return false if we have conflicts in need of resolving, true if we are up to date.
	This is only run on a mirror:
		1. Download all master txns that we don't have yet, and try to apply them.
		2. If we have a conflict, return false to get it resolved."

	^self applyPendingTxns