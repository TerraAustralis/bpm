as yet unclassified
fillForm: aForm
	"add fields to form for editing receiver properties"
	self isBegin ifTrue: [
		aForm newBoolean label: 'Group begin'; withSelector: #isBegin; readOnly: true.
		aForm newText label: 'Name'; withSelector: #name.
		aForm newText label: 'Description'; withSelector: #description; medium; multiline: true.
		aForm newText label: 'Label'; withSelector: #label.
		aForm newText label: 'CSS class'; withSelector: #cssClass.
	] ifFalse: [
		aForm newBoolean label: 'Group end'; withSelector: #isEnd; readOnly: true.
	]