rendering
renderFieldsOn: html
	| coll top |
	"We render all our fields in a table."
	self currentUserSettings showIntegratedHelp ifTrue: [
		html div style: 'display:none'; id: self formHelpId; with: 'Loading...'.
	].

	top := coll := OrderedCollection new.
	fieldComponents do: [:child |	coll := child addToGroup: coll ].

	rowcnt := 0.
	"perform rendering fields with group nesting"
	html table class: #formtable; cellspacing:0; cellpadding: 0; with: [
		top do: [:elem | self renderFieldOrGroup: elem ]
	]