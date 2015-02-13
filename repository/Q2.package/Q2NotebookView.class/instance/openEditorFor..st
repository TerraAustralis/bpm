render
openEditorFor: aNote 
	"Create an editor for a reply to given note."

	| editor |
	editor := Q2NoteEditor parent: self.
	editors at: aNote put: editor.
	editor note: aNote newNote