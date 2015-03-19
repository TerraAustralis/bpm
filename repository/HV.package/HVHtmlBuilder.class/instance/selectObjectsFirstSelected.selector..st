html-forms
selectObjectsFirstSelected: objects selector: sel

	^self select: self nextVarName objects: objects values: nil size: 1 multiple: false nilLabel: #None selector: sel value: (objects isEmpty ifTrue:[nil] ifFalse:[objects first])