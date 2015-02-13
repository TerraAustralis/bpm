render
renderContentOn: html 

	| notebook renderBlock s |
	notebook := case notebook.
	html heading level2; with: 'Notes (', notebook notes size asString, ')'.
	s := self currentUserSettings.
	s showNotesOptions
		ifTrue: [
			html form: [
				html label: 'Show threaded' field: [:id |
					html checkbox id: id;
						value: showThreaded;
						submitOnClick;
						callback: [:val | showThreaded := val]]
					tooltip: 'Shows notes in a threaded fashion with each level sorted chronologically. Easier to follow discussions but is not globally chronological.'.
				html label: 'Newest first' field: [:id |
					html checkbox id: id;
						value: newFirst;
						submitOnClick;
						callback: [:val | newFirst := val]]
					tooltip: 'Reverse sort order making the newest notes appear first. Makes reading all notes in sequence harder but easier to see newest at a glance.']]
		ifFalse: [	
			newFirst := s showNewNotesFirst.
			showThreaded := s showNotesThreaded].
	self renderEditorFor: case on: html.
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
					ifFalse: [notebook notes do: renderBlock]]]