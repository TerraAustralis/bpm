rendering
renderEditorOn: html id: elementId
| id |
	self edit.
	id := html allocateKey.
	html div class: 'wikieditor'; with: [
			html textArea id: id; columns: 80; rows: 20; value: page source; 
				callback: [:val | editing ifTrue: [ newSource := val. self save ]].
			html break.
			html button
				onClick: (html updater id: elementId; 
					triggerFormElement: id;
					callback: [ :updater | self renderViewerOn: updater id: elementId ]);
				with: 'Save'.
			html button
				onClick: (html updater id: elementId; 
					callback: [ :updater | self renderViewerOn: updater id: elementId ]);
				with: 'Cancel'.
			html break style: 'clear: left;']