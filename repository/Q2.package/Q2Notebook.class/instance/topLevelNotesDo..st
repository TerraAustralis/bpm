accessing
topLevelNotesDo: aBlock
	"Iterate over top level notes in chronological order."

	^notes do: [:each |
		each hasParent ifFalse: [
			aBlock value: each]]