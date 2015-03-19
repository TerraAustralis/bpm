url testing
entryForUrl: anUrl
	"Return the entry that corresponds to <anUrl>."

	| stream |
	stream := HVUrlStream onString: anUrl.
	^rootEntry entryFor: stream