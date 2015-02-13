instance creation
possiblyCommit: aBlock
	"This is a variant of #commit: in which we do #begin
	and then #commit if still #inTransaction. This makes
	it possible for code inside the block to abort and perform
	its own non-nested commits instead. We only commit at
	the end if we are still in a transaction.
	From within the block you can access the session using:
		XXXConnectionPool currentSession"

	self sessionDo: [:sess |
		| result |
		sess dbSession begin.
		result := aBlock value.
		sess dbSession commit.
		^result]