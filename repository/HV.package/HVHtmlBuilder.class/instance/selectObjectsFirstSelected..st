html-forms
selectObjectsFirstSelected: objects

	^self select: self nextVarName objects: objects size: 1 value: (objects isEmpty ifTrue:[nil] ifFalse:[objects first])