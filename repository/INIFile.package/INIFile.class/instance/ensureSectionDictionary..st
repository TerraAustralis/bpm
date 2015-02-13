private
ensureSectionDictionary: label
	^ self sectionDictionaries at: label ifAbsentPut: [Dictionary new]