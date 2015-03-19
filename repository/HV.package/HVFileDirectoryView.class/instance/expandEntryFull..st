table of contents
expandEntryFull: aTocEntry
	"Expand given entry if it has children
	and make sure all parents of the entry are expanded
	by updating the session info on which entries to show."

	| entry |
	entry := aTocEntry.
	[entry isRoot] whileFalse: [
		entry hasChildren
			ifTrue: [self expandEntryName: entry name].
		entry := entry parent]