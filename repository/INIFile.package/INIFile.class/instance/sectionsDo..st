accessing
sectionsDo: aBlock
	self sectionDictionaries keysDo:
		[:key | aBlock value: (INIFileSection on: self label: key)]