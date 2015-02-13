rendering
renderViewerOn: html id: elementId
	"Wiki editor uses Ajax to post edited text."
	| messages |
	self cancel.
	messages := parent validationMessagesFor: owner.
	
	html div class: 'wikiviewer'; with: [
		((messages notNil) and: [messages notEmpty]) ifTrue: [
			messages do: [:each | html html: ((Q2WikiPage source: each) swikifyFor: self inApplication: self application)].
			html horizontalRule].
		html html: (page swikifyFor: self inApplication: self application).
		html break. 
		html anchor
			onClick: (
			html updater id: elementId; 
				callback: [ :updater |  self edit. self renderEditorOn: updater id: elementId ]);
			tooltip: 'Click to edit text';
			with: 'edit'
		]