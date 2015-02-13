transactions-private
tryToCommit: aBlock
	"Return result of block or nil if we fail."

	^self dbSession tryToCommit: aBlock