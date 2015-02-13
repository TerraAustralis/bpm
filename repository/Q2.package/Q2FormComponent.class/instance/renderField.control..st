rendering
renderField: fieldComponent control: aBlock
	"Render a label tag with an id that the corresponding input tag needs to use inside.
	We add a tooltip to the label which since the label tag spans the control, will be shown
	for both the label and input."

	^self render: fieldComponent
		control: aBlock
		tooltip: fieldComponent field description
		help: ("self currentUser settings showIntegratedHelp ifTrue: [" fieldComponent field wikiPage"] ifFalse: [nil]")