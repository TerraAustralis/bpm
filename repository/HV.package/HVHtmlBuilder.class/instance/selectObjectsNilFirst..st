html-forms
selectObjectsNilFirst: objects

	^self select: self nextVarName objects: (objects asOrderedCollection addFirst: nil; yourself) size: 1 value: nil