html-forms
selectObjectsNilFirst: objects nilLabel: label selector: sel value: default

	^self select: self nextVarName objects: (objects asOrderedCollection addFirst: nil; yourself) values: nil size: 1 multiple: false nilLabel: label selector: sel value: default