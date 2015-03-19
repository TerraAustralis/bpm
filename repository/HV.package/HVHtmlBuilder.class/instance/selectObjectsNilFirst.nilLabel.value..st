html-forms
selectObjectsNilFirst: objects nilLabel: label value: default

	^self select: self nextVarName objects: (objects asOrderedCollection addFirst: nil; yourself) size: 1 nilLabel: label value: default