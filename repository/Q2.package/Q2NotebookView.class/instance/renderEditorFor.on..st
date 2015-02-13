render
renderEditorFor: noteOrCase on: html
	"Render editor for note (or case) if there is one,
	otherwise render an anchor to get one."

	| editor editorKey |
	html div class: 'commentsub'; with: [
		editor := editors at: noteOrCase ifAbsent: [nil].
		editor
			ifNotNil: [html render: editor] 
			ifNil: [
				editorKey := html allocateKey.
				html anchor
					callback: [
						self openEditorFor: noteOrCase.
						"self session jumpToAnchor: noteOrCase id asString36"];
					with: noteOrCase replyText]].
	html div id: editorKey