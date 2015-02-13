actions
addExtraForm
	"Create a formValue for the given form, add it to the multiformValue
	this multiformeditor uses and the form to the target. Then create an
	editor visitor for it and  add that editor to our visitors and add it to the tab book."

	| val visitor |
	formValue add: (val := toAdd newBufferFor: formValue target).
	"	formValue target addForm: toAdd."
	visitor := Q2FormEditor model: val.
	visitor parent: self.
	edit 
		ifTrue: 
			[visitor
				subForm: true;
				noButtons].
	editors add: visitor.
	tabBook add: visitor label: val label.
	tabBook select: val label.
	toAdd := nil