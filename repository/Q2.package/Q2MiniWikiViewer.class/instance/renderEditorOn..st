rendering
renderEditorOn: html
	self edit.
	html div class: 'wikieditor'; 
		script: ( html inPlaceEditor okButton:true; okText: 'Save'; cancelLink: true; cancelText:'Cancel'
		);
		with: page source.
	
"
	html div class: 'wikieditor'; with: [
			html textArea columns: 80; rows: 20; value: page source; callback: [:val | newSource := val].
			html break.
			html button text: 'Save'; 
			onClick: (html updater id: elementId; 
				callback: [ :updater | self break. self save. self renderViewerOn: updater id: elementId ]).
			html submitButton text: 'Cancel'; callback: [self cancel].
			html break style: 'clear: left;'] "