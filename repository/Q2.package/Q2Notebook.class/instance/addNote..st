notes
addNote: aNote
	"Add note to case and also add it as a reply
	to an optional parent note."

	aNote hasParent ifTrue: [aNote parent addReply: aNote].
	notes add: aNote