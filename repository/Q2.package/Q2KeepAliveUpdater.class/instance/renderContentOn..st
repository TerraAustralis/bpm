as yet unclassified
renderContentOn: html
	self isActive ifTrue: [ html div
		id: 'updater';
		script:  (html scriptaculous periodical
					id: 'updater';
					frequency: self frequency;
					on: #renderNothingOn: of: self)
		]