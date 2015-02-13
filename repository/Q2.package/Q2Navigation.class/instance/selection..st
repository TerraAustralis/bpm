selection
selection: anObject

	anObject ifNotNil: [
		selection contents: anObject.
		self selectionChanged]