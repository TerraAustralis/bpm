rendering
renderViewerOn: html
	"This is a bit of a hack, the old swiki code relies on WAHtmlBuilder
	so we can't use the WACanvas directly."
	| messages |
	self cancel.
	messages := parent validationMessagesFor: owner.
	
	html div class: 'wikiviewer'; with: [
		((messages notNil) and: [messages notEmpty]) ifTrue: [
			messages do: [:each | html html: ((Q2WikiPage source: each) swikifyFor: self inApplication: self application)].
			html horizontalRule].
		html html: (page swikifyFor: self inApplication: self application).
		html break.
		html anchor: 'edit' callback: [self edit] tooltip: 'Click to edit text']