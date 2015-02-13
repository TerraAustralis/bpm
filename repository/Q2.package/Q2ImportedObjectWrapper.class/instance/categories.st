categories
categories
	"Return global and local categories - but only the global ones that are imported."

	| importedCats |
	self flag: #q2todo. "is probably smarter to iterate over wrappedObject categories - since they might be few or none"
	importedCats := process importedCategories select: 
		[:each | wrappedObject categories anySatisfy: [:glob | each = glob ]].
	localCategories ifNil: [^importedCats] ifNotNil: [^importedCats union: localCategories]