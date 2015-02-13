accessing
topLevelNotesReverseDo: aBlock
	"Iterate over notes with given sort order."

	^notes reverseDo: [:each |
		each hasParent ifFalse: [
			aBlock value: each]]