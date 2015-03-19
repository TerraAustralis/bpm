html-forms
selectObjectsFirstSelected: objects values: values

	^self select: self nextVarName objects: objects values: values size: 1 multiple: false nilLabel: #None selector: nil value: (objects isEmpty ifTrue:[nil] ifFalse:[values first])