html-forms
selectObjectsNilFirst: objects value: default

	^self select: self nextVarName objects: (objects asOrderedCollection addFirst: nil; yourself) size: 1 value: default