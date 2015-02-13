messages
handleRawMailItem: msg in: aProcess
	| mailItem |
	mailItem := self from: msg model: aProcess model.
	(self rejectsEmail: mailItem) ifFalse: [
		(aProcess handleMailItem: mailItem)
	]