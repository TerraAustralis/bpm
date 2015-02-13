shared name collections
valuesFor: aCustomObjectType
	"Return a SortedCollection of 'names' of each custom object.
	This way these are shared between sessions in one image."

	^SharedNameCollections at: aCustomObjectType id ifAbsent: [SortedCollection new]