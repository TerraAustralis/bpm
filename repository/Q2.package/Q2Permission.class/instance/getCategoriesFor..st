as yet unclassified
getCategoriesFor: aKey
	^ categoriesForClass at: aKey ifAbsent: [^ #()].