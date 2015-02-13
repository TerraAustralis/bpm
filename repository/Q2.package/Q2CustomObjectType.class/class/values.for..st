shared name collections
values: aCollection for: aCustomObjectType
	"Set a SortedCollection of the names of each custom object.
	This way these are shared between sessions in one image."

	^SharedNameCollections at: aCustomObjectType id put: aCollection