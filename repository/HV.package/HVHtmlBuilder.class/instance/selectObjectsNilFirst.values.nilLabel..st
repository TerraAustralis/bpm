html-forms
selectObjectsNilFirst: objects values: values nilLabel: label

	^self select: self nextVarName objects: (objects asOrderedCollection addFirst: nil; yourself) values: (values asOrderedCollection addFirst: nil; yourself) size: 1 multiple: false nilLabel: label selector: nil value: nil