render
renderPrintViewOn: html
	"render receiver in printer-friendly version"
	| notebook renderBlock s |
	printMode := true.
	notebook := case notebook.
	s := self currentUserSettings.
	showThreaded := s showNotesThreaded.
	newFirst := s showNewNotesFirst.
	html heading level2; with:  'Notes (', notebook notes size asString, ')'.
	renderBlock := [:note | self renderNote: note on: html level: 0].
	html unorderedList id: 'commentlisting'; with: [
		showThreaded
			ifTrue: [
				newFirst
					ifTrue: [notebook topLevelNotesReverseDo: renderBlock]
					ifFalse: [notebook topLevelNotesDo: renderBlock]]
			ifFalse: [
				newFirst
					ifTrue: [notebook notes reverseDo: renderBlock]
					ifFalse: [notebook notes do: renderBlock]]].
	printMode:= false.