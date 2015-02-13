as yet unclassified
fieldEditor: field
	"Create a fresh Q2FormEditor for field"
	| fldForm fldEditor |
	fldForm := Q2Form new.
	field fillForm: fldForm.
	fldEditor := Q2FormEditor model: (fldForm newBufferFor: field).
	fldEditor parent: self; noButtons; subForm: true.
	^ fldEditor.