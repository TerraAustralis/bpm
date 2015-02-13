rendering
renderContentOn: html
	editing
		ifTrue: [
			html div
				class: 'help-shown';
				with: [ self renderEditorOn: html ] ]
		ifFalse: [
			html div with: [self renderViewerOn: html ] ].