as yet unclassified
renderTabHeaderOn: html for: containedComponent selected: selected
	html div: [
		 (containedComponent respondsTo: #renderTabHeaderOn:for:selected:)
			ifTrue: [ containedComponent renderTabHeaderOn: html for: self selected: selected ]
			ifFalse: [ self renderTabDefaultHeaderOn: html for: containedComponent selected: selected ].
	]